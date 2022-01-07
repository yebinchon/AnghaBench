; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_attach_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_attach_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.tmpfs_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tmpfs_dir_duphead }
%struct.tmpfs_dir_duphead = type { i32 }
%struct.tmpfs_dirent = type { i64 }

@TMPFS_DIRCOOKIE_DUP_MAX = common dso_local global i64 0, align 8
@TMPFS_DIRCOOKIE_DUP_MIN = common dso_local global i64 0, align 8
@uh = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmpfs_node*, %struct.tmpfs_dir_duphead*, %struct.tmpfs_dirent*)* @tmpfs_dir_attach_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmpfs_dir_attach_dup(%struct.tmpfs_node* %0, %struct.tmpfs_dir_duphead* %1, %struct.tmpfs_dirent* %2) #0 {
  %4 = alloca %struct.tmpfs_node*, align 8
  %5 = alloca %struct.tmpfs_dir_duphead*, align 8
  %6 = alloca %struct.tmpfs_dirent*, align 8
  %7 = alloca %struct.tmpfs_dir_duphead*, align 8
  %8 = alloca %struct.tmpfs_dirent*, align 8
  %9 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_node* %0, %struct.tmpfs_node** %4, align 8
  store %struct.tmpfs_dir_duphead* %1, %struct.tmpfs_dir_duphead** %5, align 8
  store %struct.tmpfs_dirent* %2, %struct.tmpfs_dirent** %6, align 8
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %11 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tmpfs_dir_duphead* %12, %struct.tmpfs_dir_duphead** %7, align 8
  %13 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %7, align 8
  %14 = call %struct.tmpfs_dirent* @LIST_FIRST(%struct.tmpfs_dir_duphead* %13)
  store %struct.tmpfs_dirent* %14, %struct.tmpfs_dirent** %8, align 8
  %15 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %16 = icmp eq %struct.tmpfs_dirent* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %19 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MAX, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17, %3
  %24 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %25 = icmp eq %struct.tmpfs_dirent* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MIN, align 8
  %28 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %29 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %32 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %36 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %39 = call i32 @tmpfs_dirent_dup(%struct.tmpfs_dirent* %38)
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %7, align 8
  %42 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 1), align 4
  %44 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %41, %struct.tmpfs_dirent* %42, i32 %43)
  %45 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %5, align 8
  %46 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 0), align 4
  %48 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %45, %struct.tmpfs_dirent* %46, i32 %47)
  br label %143

49:                                               ; preds = %17
  br label %50

50:                                               ; preds = %49, %106
  %51 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  store %struct.tmpfs_dirent* %51, %struct.tmpfs_dirent** %9, align 8
  %52 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 1), align 4
  %54 = call %struct.tmpfs_dirent* @LIST_NEXT(%struct.tmpfs_dirent* %52, i32 %53)
  store %struct.tmpfs_dirent* %54, %struct.tmpfs_dirent** %8, align 8
  %55 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %56 = icmp eq %struct.tmpfs_dirent* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %59 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MIN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MIN, align 8
  %65 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %66 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %68 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 1), align 4
  %70 = call i32 @LIST_INSERT_AFTER(%struct.tmpfs_dirent* %67, %struct.tmpfs_dirent* %68, i32 %69)
  %71 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %5, align 8
  %72 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 0), align 4
  %74 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %71, %struct.tmpfs_dirent* %72, i32 %73)
  br label %143

75:                                               ; preds = %57, %50
  %76 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %77 = icmp eq %struct.tmpfs_dirent* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MAX, align 8
  %80 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %81 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %7, align 8
  %83 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 1), align 4
  %85 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %82, %struct.tmpfs_dirent* %83, i32 %84)
  %86 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %5, align 8
  %87 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 0), align 4
  %89 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %86, %struct.tmpfs_dirent* %87, i32 %88)
  br label %143

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %93 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %97 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %91
  %101 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %102 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TMPFS_DIRCOOKIE_DUP_MAX, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100, %91
  br label %50

107:                                              ; preds = %100
  %108 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %109 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %113 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %115 = call i32 @tmpfs_dirent_dup(%struct.tmpfs_dirent* %114)
  %116 = call i32 @MPASS(i32 %115)
  %117 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %9, align 8
  %118 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %121 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @MPASS(i32 %124)
  %126 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %127 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %130 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @MPASS(i32 %133)
  %135 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %8, align 8
  %136 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 1), align 4
  %138 = call i32 @LIST_INSERT_BEFORE(%struct.tmpfs_dirent* %135, %struct.tmpfs_dirent* %136, i32 %137)
  %139 = load %struct.tmpfs_dir_duphead*, %struct.tmpfs_dir_duphead** %5, align 8
  %140 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %6, align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uh, i32 0, i32 0, i32 0), align 4
  %142 = call i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead* %139, %struct.tmpfs_dirent* %140, i32 %141)
  br label %143

143:                                              ; preds = %107, %78, %63, %37
  ret void
}

declare dso_local %struct.tmpfs_dirent* @LIST_FIRST(%struct.tmpfs_dir_duphead*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tmpfs_dirent_dup(%struct.tmpfs_dirent*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.tmpfs_dir_duphead*, %struct.tmpfs_dirent*, i32) #1

declare dso_local %struct.tmpfs_dirent* @LIST_NEXT(%struct.tmpfs_dirent*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.tmpfs_dirent*, %struct.tmpfs_dirent*, i32) #1

declare dso_local i32 @LIST_INSERT_BEFORE(%struct.tmpfs_dirent*, %struct.tmpfs_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
