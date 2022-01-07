; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i64 }
%struct.audit_pipe_entry = type { i64, i64 }
%struct.audit_pipe = type { i32, i64, i32, i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@AUDIT_PIPE_NBIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"audit_pipe_read: record_len > qoffset (1)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"audit_pipe_read: queue out of sync after uiomove\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"audit_pipe_read: record_len >= qoffset (2)\00", align 1
@ape_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @audit_pipe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_pipe_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.audit_pipe_entry*, align 8
  %9 = alloca %struct.audit_pipe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.audit_pipe** %9 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %180

18:                                               ; preds = %3
  %19 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %20 = call i64 @AUDIT_PIPE_SX_XLOCK_SIG(%struct.audit_pipe* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @EINTR, align 4
  store i32 %23, i32* %4, align 4
  br label %180

24:                                               ; preds = %18
  %25 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %26 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %25)
  br label %27

27:                                               ; preds = %59, %24
  %28 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %29 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %28, i32 0, i32 4
  %30 = call i64 @TAILQ_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %27
  %33 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %34 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AUDIT_PIPE_NBIO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %41 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %40)
  %42 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %43 = call i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe* %42)
  %44 = load i32, i32* @EAGAIN, align 4
  store i32 %44, i32* %4, align 4
  br label %180

45:                                               ; preds = %32
  %46 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %47 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %46, i32 0, i32 6
  %48 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %49 = call i32 @AUDIT_PIPE_MTX(%struct.audit_pipe* %48)
  %50 = call i32 @cv_wait_sig(i32* %47, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %55 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %54)
  %56 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %57 = call i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %180

59:                                               ; preds = %45
  br label %27

60:                                               ; preds = %27
  %61 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %62 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %174, %60
  %66 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %67 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %66, i32 0, i32 4
  %68 = call %struct.audit_pipe_entry* @TAILQ_FIRST(i32* %67)
  store %struct.audit_pipe_entry* %68, %struct.audit_pipe_entry** %8, align 8
  %69 = icmp ne %struct.audit_pipe_entry* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.uio*, %struct.uio** %6, align 8
  %72 = getelementptr inbounds %struct.uio, %struct.uio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ false, %65 ], [ %74, %70 ]
  br i1 %76, label %77, label %175

77:                                               ; preds = %75
  %78 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %79 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %78)
  %80 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %81 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %84 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @KASSERT(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %90 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %93 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %struct.uio*, %struct.uio** %6, align 8
  %97 = getelementptr inbounds %struct.uio, %struct.uio* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @MIN(i64 %95, i64 %98)
  store i32 %99, i32* %10, align 4
  %100 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %101 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %100)
  %102 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %103 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %107 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.uio*, %struct.uio** %6, align 8
  %112 = call i32 @uiomove(i8* %109, i32 %110, %struct.uio* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %77
  %116 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %117 = call i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %180

119:                                              ; preds = %77
  %120 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %121 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %120)
  %122 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %123 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %122, i32 0, i32 4
  %124 = call %struct.audit_pipe_entry* @TAILQ_FIRST(i32* %123)
  %125 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %126 = icmp eq %struct.audit_pipe_entry* %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @KASSERT(i32 %127, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %132 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %130
  store i64 %134, i64* %132, align 8
  %135 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %136 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %139 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp sge i64 %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @KASSERT(i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %145 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %148 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %119
  %152 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %153 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %152, i32 0, i32 4
  %154 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %155 = load i32, i32* @ape_queue, align 4
  %156 = call i32 @TAILQ_REMOVE(i32* %153, %struct.audit_pipe_entry* %154, i32 %155)
  %157 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %158 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %161 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %8, align 8
  %167 = call i32 @audit_pipe_entry_free(%struct.audit_pipe_entry* %166)
  %168 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %169 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %173 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %151, %119
  br label %65

175:                                              ; preds = %75
  %176 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %177 = call i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe* %176)
  %178 = load %struct.audit_pipe*, %struct.audit_pipe** %9, align 8
  %179 = call i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe* %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %175, %115, %53, %39, %22, %16
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i64 @AUDIT_PIPE_SX_XLOCK_SIG(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @AUDIT_PIPE_UNLOCK(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_SX_XUNLOCK(%struct.audit_pipe*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32) #1

declare dso_local i32 @AUDIT_PIPE_MTX(%struct.audit_pipe*) #1

declare dso_local %struct.audit_pipe_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.audit_pipe_entry*, i32) #1

declare dso_local i32 @audit_pipe_entry_free(%struct.audit_pipe_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
