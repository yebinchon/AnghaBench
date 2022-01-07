; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_write_refed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_start_write_refed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mount = type { i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }

@V_XSLEEP = common dso_local global i32 0, align 4
@MNTK_SUSPEND = common dso_local global i32 0, align 4
@writeopcount = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@TDP_IGNSUSP = common dso_local global i32 0, align 4
@VFCF_SBDRY = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PUSER = common dso_local global i32 0, align 4
@V_NOWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"suspfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, i32)* @vn_start_write_refed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_start_write_refed(%struct.mount* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_true(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @V_XSLEEP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.mount*, %struct.mount** %5, align 8
  %23 = call i64 @vfs_op_thread_enter(%struct.mount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.mount*, %struct.mount** %5, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MNTK_SUSPEND, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @MPASS(i32 %32)
  %34 = load %struct.mount*, %struct.mount** %5, align 8
  %35 = load i32, i32* @writeopcount, align 4
  %36 = call i32 @vfs_mp_count_add_pcpu(%struct.mount* %34, i32 %35, i32 1)
  %37 = load %struct.mount*, %struct.mount** %5, align 8
  %38 = call i32 @vfs_op_thread_exit(%struct.mount* %37)
  store i32 0, i32* %4, align 4
  br label %134

39:                                               ; preds = %21, %16, %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.mount*, %struct.mount** %5, align 8
  %44 = call i32 @MNT_MTX(%struct.mount* %43)
  %45 = load i32, i32* @MA_OWNED, align 4
  %46 = call i32 @mtx_assert(i32 %44, i32 %45)
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.mount*, %struct.mount** %5, align 8
  %49 = call i32 @MNT_ILOCK(%struct.mount* %48)
  br label %50

50:                                               ; preds = %47, %42
  store i32 0, i32* %8, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TDP_IGNSUSP, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.mount*, %struct.mount** %5, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %62 = icmp ne %struct.TYPE_4__* %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %57, %50
  %64 = load %struct.mount*, %struct.mount** %5, align 8
  %65 = getelementptr inbounds %struct.mount, %struct.mount* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VFCF_SBDRY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PCATCH, align 4
  %75 = and i32 %73, %74
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  %79 = load i32, i32* @PUSER, align 4
  %80 = sub nsw i32 %79, 1
  %81 = or i32 %78, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %106, %77
  %83 = load %struct.mount*, %struct.mount** %5, align 8
  %84 = getelementptr inbounds %struct.mount, %struct.mount* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MNTK_SUSPEND, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @V_NOWAIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %95, i32* %8, align 4
  br label %119

96:                                               ; preds = %89
  %97 = load %struct.mount*, %struct.mount** %5, align 8
  %98 = getelementptr inbounds %struct.mount, %struct.mount* %97, i32 0, i32 2
  %99 = load %struct.mount*, %struct.mount** %5, align 8
  %100 = call i32 @MNT_MTX(%struct.mount* %99)
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @msleep(i32* %98, i32 %100, i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %119

106:                                              ; preds = %96
  br label %82

107:                                              ; preds = %82
  br label %108

108:                                              ; preds = %107, %57
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @V_XSLEEP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %119

114:                                              ; preds = %108
  %115 = load %struct.mount*, %struct.mount** %5, align 8
  %116 = getelementptr inbounds %struct.mount, %struct.mount* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %113, %105, %94
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @V_XSLEEP, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122, %119
  %128 = load %struct.mount*, %struct.mount** %5, align 8
  %129 = call i32 @MNT_REL(%struct.mount* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.mount*, %struct.mount** %5, align 8
  %132 = call i32 @MNT_IUNLOCK(%struct.mount* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %25
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @vfs_op_thread_enter(%struct.mount*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vfs_mp_count_add_pcpu(%struct.mount*, i32, i32) #1

declare dso_local i32 @vfs_op_thread_exit(%struct.mount*) #1

declare dso_local i32 @mtx_assert(i32, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @MNT_REL(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
