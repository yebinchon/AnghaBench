; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_get_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_get_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_8__, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EM_EEPROM_APME = common dso_local global i32 0, align 4
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@EM_82544_APME = common dso_local global i32 0, align 4
@NVM_INIT_CONTROL3_PORT_B = common dso_local global i32 0, align 4
@NVM_INIT_CONTROL3_PORT_A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@E1000_WUC_APME = common dso_local global i32 0, align 4
@E1000_WUC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FUNC_1 = common dso_local global i32 0, align 4
@global_quad_port_a = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_get_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_get_wakeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @iflib_get_dev(i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = call i32 @e1000_enable_mng_pass_thru(%struct.TYPE_8__* %13)
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @EM_EEPROM_APME, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %79 [
    i32 152, label %23
    i32 151, label %23
    i32 150, label %24
    i32 149, label %30
    i32 148, label %30
    i32 145, label %48
    i32 141, label %48
    i32 147, label %52
    i32 146, label %52
    i32 153, label %52
    i32 135, label %70
    i32 134, label %70
    i32 136, label %70
    i32 130, label %70
    i32 133, label %70
    i32 132, label %70
    i32 131, label %70
    i32 144, label %70
    i32 143, label %70
    i32 142, label %70
    i32 138, label %70
    i32 137, label %70
    i32 140, label %70
    i32 139, label %70
    i32 129, label %70
    i32 128, label %70
  ]

23:                                               ; preds = %1, %1
  br label %84

24:                                               ; preds = %1
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  %27 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %28 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %26, i32 %27, i32 1, i32* %5)
  %29 = load i32, i32* @EM_82544_APME, align 4
  store i32 %29, i32* %7, align 4
  br label %84

30:                                               ; preds = %1, %1
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load i32, i32* @NVM_INIT_CONTROL3_PORT_B, align 4
  %41 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %39, i32 %40, i32 1, i32* %5)
  br label %84

42:                                               ; preds = %30
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = load i32, i32* @NVM_INIT_CONTROL3_PORT_A, align 4
  %46 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %44, i32 %45, i32 1, i32* %5)
  br label %47

47:                                               ; preds = %42
  br label %84

48:                                               ; preds = %1, %1
  %49 = load i8*, i8** @TRUE, align 8
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %1, %1, %1, %48
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 1
  %62 = load i32, i32* @NVM_INIT_CONTROL3_PORT_B, align 4
  %63 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %61, i32 %62, i32 1, i32* %5)
  br label %84

64:                                               ; preds = %52
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = load i32, i32* @NVM_INIT_CONTROL3_PORT_A, align 4
  %68 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %66, i32 %67, i32 1, i32* %5)
  br label %69

69:                                               ; preds = %64
  br label %84

70:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %71 = load i32, i32* @E1000_WUC_APME, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load i32, i32* @E1000_WUC, align 4
  %78 = call i32 @E1000_READ_REG(%struct.TYPE_8__* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  br label %84

79:                                               ; preds = %1
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = load i32, i32* @NVM_INIT_CONTROL3_PORT_A, align 4
  %83 = call i32 @e1000_read_nvm(%struct.TYPE_8__* %81, i32 %82, i32 1, i32* %5)
  br label %84

84:                                               ; preds = %79, %70, %69, %59, %47, %37, %24, %23
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32, i32* @E1000_WUFC_MAG, align 4
  %91 = load i32, i32* @E1000_WUFC_MC, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @pci_get_device(i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  switch i32 %98, label %150 [
    i32 159, label %99
    i32 161, label %102
    i32 160, label %102
    i32 158, label %114
    i32 157, label %126
    i32 156, label %138
    i32 154, label %138
    i32 155, label %138
  ]

99:                                               ; preds = %95
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %150

102:                                              ; preds = %95, %95
  %103 = load %struct.adapter*, %struct.adapter** %3, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 1
  %105 = load i32, i32* @E1000_STATUS, align 4
  %106 = call i32 @E1000_READ_REG(%struct.TYPE_8__* %104, i32 %105)
  %107 = load i32, i32* @E1000_STATUS_FUNC_1, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %102
  br label %150

114:                                              ; preds = %95
  %115 = load i32, i32* @global_quad_port_a, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* @global_quad_port_a, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @global_quad_port_a, align 4
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 0, i32* @global_quad_port_a, align 4
  br label %125

125:                                              ; preds = %124, %120
  br label %150

126:                                              ; preds = %95
  %127 = load %struct.adapter*, %struct.adapter** %3, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 1
  %129 = load i32, i32* @E1000_STATUS, align 4
  %130 = call i32 @E1000_READ_REG(%struct.TYPE_8__* %128, i32 %129)
  %131 = load i32, i32* @E1000_STATUS_FUNC_1, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %126
  br label %150

138:                                              ; preds = %95, %95, %95
  %139 = load i32, i32* @global_quad_port_a, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.adapter*, %struct.adapter** %3, align 8
  %143 = getelementptr inbounds %struct.adapter, %struct.adapter* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @global_quad_port_a, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @global_quad_port_a, align 4
  %147 = icmp eq i32 %146, 4
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* @global_quad_port_a, align 4
  br label %149

149:                                              ; preds = %148, %144
  br label %150

150:                                              ; preds = %95, %149, %137, %125, %113, %99
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @e1000_enable_mng_pass_thru(%struct.TYPE_8__*) #1

declare dso_local i32 @e1000_read_nvm(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @E1000_READ_REG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
