; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_info = type { i32, i32, %struct.TYPE_2__, %struct.tr_chinfo* }
%struct.TYPE_2__ = type { i32 }
%struct.tr_chinfo = type { i32, i32 }

@TR_REG_MISCINT = common dso_local global i32 0, align 4
@TR_INT_ADDR = common dso_local global i32 0, align 4
@TR_REG_ADDRINTA = common dso_local global i32 0, align 4
@TR_REG_ADDRINTB = common dso_local global i32 0, align 4
@TR_REG_CSPF_A = common dso_local global i32 0, align 4
@TR_REG_CSPF_B = common dso_local global i32 0, align 4
@TR_INT_SB = common dso_local global i32 0, align 4
@TR_REG_SBR9 = common dso_local global i32 0, align 4
@TR_REG_SBR10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tr_info*, align 8
  %4 = alloca %struct.tr_chinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.tr_info*
  store %struct.tr_info* %12, %struct.tr_info** %3, align 8
  %13 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %14 = load i32, i32* @TR_REG_MISCINT, align 4
  %15 = call i32 @tr_rd(%struct.tr_info* %13, i32 %14, i32 4)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @TR_INT_ADDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %116

20:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %111, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %24 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %115

27:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  %28 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TR_REG_ADDRINTA, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TR_REG_ADDRINTB, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @tr_rd(%struct.tr_info* %28, i32 %36, i32 4)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @TR_REG_CSPF_A, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @TR_REG_CSPF_B, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @tr_rd(%struct.tr_info* %38, i32 %46, i32 4)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %95, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %65 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %56
  %69 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %70 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %69, i32 0, i32 3
  %71 = load %struct.tr_chinfo*, %struct.tr_chinfo** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %71, i64 %73
  store %struct.tr_chinfo* %74, %struct.tr_chinfo** %4, align 8
  %75 = load %struct.tr_chinfo*, %struct.tr_chinfo** %4, align 8
  %76 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load %struct.tr_chinfo*, %struct.tr_chinfo** %4, align 8
  %82 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @chn_intr(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.tr_chinfo*, %struct.tr_chinfo** %4, align 8
  %87 = getelementptr inbounds %struct.tr_chinfo, %struct.tr_chinfo* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %68
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %51
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 31
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %51, label %99

99:                                               ; preds = %95
  br label %103

100:                                              ; preds = %45
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 32
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = icmp sle i32 %105, 32
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @TR_REG_ADDRINTA, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @TR_REG_ADDRINTB, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @tr_wr(%struct.tr_info* %104, i32 %112, i32 %113, i32 4)
  br label %21

115:                                              ; preds = %21
  br label %116

116:                                              ; preds = %115, %1
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @TR_INT_SB, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %123 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @chn_intr(i32 %125)
  %127 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %128 = load i32, i32* @TR_REG_SBR9, align 4
  %129 = call i32 @tr_rd(%struct.tr_info* %127, i32 %128, i32 1)
  %130 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %131 = load i32, i32* @TR_REG_SBR10, align 4
  %132 = call i32 @tr_rd(%struct.tr_info* %130, i32 %131, i32 1)
  br label %133

133:                                              ; preds = %121, %116
  ret void
}

declare dso_local i32 @tr_rd(%struct.tr_info*, i32, i32) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @tr_wr(%struct.tr_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
