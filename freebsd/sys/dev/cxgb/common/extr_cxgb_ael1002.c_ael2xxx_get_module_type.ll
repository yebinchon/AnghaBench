; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2xxx_get_module_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2xxx_get_module_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@phy_transtype_sfp = common dso_local global i32 0, align 4
@MODULE_DEV_ADDR = common dso_local global i32 0, align 4
@phy_modtype_sr = common dso_local global i32 0, align 4
@phy_modtype_lr = common dso_local global i32 0, align 4
@phy_modtype_lrm = common dso_local global i32 0, align 4
@phy_modtype_unknown = common dso_local global i32 0, align 4
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@phy_modtype_twinax = common dso_local global i32 0, align 4
@phy_transtype_xfp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2xxx_get_module_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2xxx_get_module_type(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @msleep(i32 %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.cphy*, %struct.cphy** %4, align 8
  %14 = call i32 @get_phytrans_type(%struct.cphy* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @phy_transtype_sfp, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %114

18:                                               ; preds = %12
  %19 = load %struct.cphy*, %struct.cphy** %4, align 8
  %20 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %21 = call i32 @ael_i2c_rd(%struct.cphy* %19, i32 %20, i32 3)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %160

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %96

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @phy_modtype_sr, align 4
  store i32 %34, i32* %3, align 4
  br label %160

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @phy_modtype_lr, align 4
  store i32 %39, i32* %3, align 4
  br label %160

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 64
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @phy_modtype_lrm, align 4
  store i32 %44, i32* %3, align 4
  br label %160

45:                                               ; preds = %40
  %46 = load %struct.cphy*, %struct.cphy** %4, align 8
  %47 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %48 = call i32 @ael_i2c_rd(%struct.cphy* %46, i32 %47, i32 8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %160

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.cphy*, %struct.cphy** %4, align 8
  %58 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %59 = call i32 @ael_i2c_rd(%struct.cphy* %57, i32 %58, i32 60)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %160

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %96

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.cphy*, %struct.cphy** %4, align 8
  %72 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %73 = call i32 @ael_i2c_rd(%struct.cphy* %71, i32 %72, i32 6)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %160

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @phy_modtype_unknown, align 4
  store i32 %82, i32* %3, align 4
  br label %160

83:                                               ; preds = %78
  %84 = load %struct.cphy*, %struct.cphy** %4, align 8
  %85 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %86 = call i32 @ael_i2c_rd(%struct.cphy* %84, i32 %85, i32 10)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %160

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %68, %29
  %97 = load %struct.cphy*, %struct.cphy** %4, align 8
  %98 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %99 = call i32 @ael_i2c_rd(%struct.cphy* %97, i32 %98, i32 18)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %160

104:                                              ; preds = %96
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %105, 10
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @phy_modtype_twinax_long, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @phy_modtype_twinax, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  store i32 %112, i32* %3, align 4
  br label %160

113:                                              ; preds = %91
  br label %158

114:                                              ; preds = %12
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @phy_transtype_xfp, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %157

118:                                              ; preds = %114
  %119 = load %struct.cphy*, %struct.cphy** %4, align 8
  %120 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %121 = call i32 @ael_i2c_rd(%struct.cphy* %119, i32 %120, i32 127)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %6, align 4
  store i32 %125, i32* %3, align 4
  br label %160

126:                                              ; preds = %118
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @phy_modtype_unknown, align 4
  store i32 %130, i32* %3, align 4
  br label %160

131:                                              ; preds = %126
  %132 = load %struct.cphy*, %struct.cphy** %4, align 8
  %133 = load i32, i32* @MODULE_DEV_ADDR, align 4
  %134 = call i32 @ael_i2c_rd(%struct.cphy* %132, i32 %133, i32 131)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %160

139:                                              ; preds = %131
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 240
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @phy_modtype_lrm, align 4
  store i32 %145, i32* %3, align 4
  br label %160

146:                                              ; preds = %139
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %147, 64
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @phy_modtype_lr, align 4
  store i32 %150, i32* %3, align 4
  br label %160

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 128
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @phy_modtype_sr, align 4
  store i32 %155, i32* %3, align 4
  br label %160

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %114
  br label %158

158:                                              ; preds = %157, %113
  %159 = load i32, i32* @phy_modtype_unknown, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %154, %149, %144, %137, %129, %124, %111, %102, %89, %81, %76, %62, %51, %43, %38, %33, %24
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @get_phytrans_type(%struct.cphy*) #1

declare dso_local i32 @ael_i2c_rd(%struct.cphy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
