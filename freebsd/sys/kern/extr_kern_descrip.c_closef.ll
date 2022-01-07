; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_closef.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_closef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.thread = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.filedesc_to_leader*, %struct.filedesc*, %struct.TYPE_4__* }
%struct.filedesc_to_leader = type { i64, i64, %struct.TYPE_6__*, %struct.filedesc_to_leader* }
%struct.TYPE_6__ = type { i32 }
%struct.filedesc = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.flock = type { i8*, i64, i64, i8* }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@P_ADVLOCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i8* null, align 8
@F_UNLCK = common dso_local global i8* null, align 8
@F_POSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @closef(%struct.file* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.flock, align 8
  %7 = alloca %struct.filedesc_to_leader*, align 8
  %8 = alloca %struct.filedesc*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DTYPE_VNODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %138

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = icmp ne %struct.thread* %15, null
  br i1 %16, label %17, label %138

17:                                               ; preds = %14
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %5, align 8
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @P_ADVLOCK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %17
  %32 = load i8*, i8** @SEEK_SET, align 8
  %33 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** @F_UNLCK, align 8
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = load %struct.vnode*, %struct.vnode** %5, align 8
  %39 = load %struct.thread*, %struct.thread** %4, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = ptrtoint %struct.TYPE_4__* %43 to i32
  %45 = load i8*, i8** @F_UNLCK, align 8
  %46 = load i32, i32* @F_POSIX, align 4
  %47 = call i32 @VOP_ADVLOCK(%struct.vnode* %38, i32 %44, i8* %45, %struct.flock* %6, i32 %46)
  br label %48

48:                                               ; preds = %31, %17
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %52, align 8
  store %struct.filedesc_to_leader* %53, %struct.filedesc_to_leader** %7, align 8
  %54 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %55 = icmp ne %struct.filedesc_to_leader* %54, null
  br i1 %55, label %56, label %137

56:                                               ; preds = %48
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.filedesc*, %struct.filedesc** %60, align 8
  store %struct.filedesc* %61, %struct.filedesc** %8, align 8
  %62 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %63 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %62)
  %64 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %65 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %64, i32 0, i32 3
  %66 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %65, align 8
  store %struct.filedesc_to_leader* %66, %struct.filedesc_to_leader** %7, align 8
  br label %67

67:                                               ; preds = %130, %56
  %68 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %69 = load %struct.thread*, %struct.thread** %4, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %72, align 8
  %74 = icmp ne %struct.filedesc_to_leader* %68, %73
  br i1 %74, label %75, label %134

75:                                               ; preds = %67
  %76 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %77 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @P_ADVLOCK, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %130

85:                                               ; preds = %75
  %86 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %87 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %91 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %90)
  %92 = load i8*, i8** @SEEK_SET, align 8
  %93 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 3
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i8*, i8** @F_UNLCK, align 8
  %97 = getelementptr inbounds %struct.flock, %struct.flock* %6, i32 0, i32 0
  store i8* %96, i8** %97, align 8
  %98 = load %struct.file*, %struct.file** %3, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 1
  %100 = load %struct.vnode*, %struct.vnode** %99, align 8
  store %struct.vnode* %100, %struct.vnode** %5, align 8
  %101 = load %struct.vnode*, %struct.vnode** %5, align 8
  %102 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %103 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = ptrtoint %struct.TYPE_6__* %104 to i32
  %106 = load i8*, i8** @F_UNLCK, align 8
  %107 = load i32, i32* @F_POSIX, align 4
  %108 = call i32 @VOP_ADVLOCK(%struct.vnode* %101, i32 %105, i8* %106, %struct.flock* %6, i32 %107)
  %109 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %110 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %109)
  %111 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %112 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %116 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %85
  %120 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %121 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %126 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %128 = call i32 @wakeup(%struct.filedesc_to_leader* %127)
  br label %129

129:                                              ; preds = %124, %119, %85
  br label %130

130:                                              ; preds = %129, %84
  %131 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %132 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %131, i32 0, i32 3
  %133 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %132, align 8
  store %struct.filedesc_to_leader* %133, %struct.filedesc_to_leader** %7, align 8
  br label %67

134:                                              ; preds = %67
  %135 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %136 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %135)
  br label %137

137:                                              ; preds = %134, %48
  br label %138

138:                                              ; preds = %137, %14, %2
  %139 = load %struct.file*, %struct.file** %3, align 8
  %140 = load %struct.thread*, %struct.thread** %4, align 8
  %141 = call i32 @fdrop(%struct.file* %139, %struct.thread* %140)
  ret i32 %141
}

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, i32, i8*, %struct.flock*, i32) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @wakeup(%struct.filedesc_to_leader*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
