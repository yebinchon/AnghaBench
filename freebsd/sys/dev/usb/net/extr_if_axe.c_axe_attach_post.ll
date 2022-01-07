; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32* }
%struct.axe_softc = type { i32*, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AXE_CMD_READ_PHYID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"PHYADDR 0x%02x:0x%02x\0A\00", align 1
@AXE_PHY_SEL_PRI = common dso_local global i32 0, align 4
@AXE_PHY_SEL_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"no valid PHY address found, assuming PHY address 0\0A\00", align 1
@AXE_FLAG_178 = common dso_local global i32 0, align 4
@AXE_178_CMD_READ_NODEID = common dso_local global i32 0, align 4
@AXE_FLAG_772 = common dso_local global i32 0, align 4
@AXE_FLAG_772A = common dso_local global i32 0, align 4
@AXE_FLAG_772B = common dso_local global i32 0, align 4
@AXE_172_CMD_READ_NODEID = common dso_local global i32 0, align 4
@AXE_CMD_READ_IPG012 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axe_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axe_softc*, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %4 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %5 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %4)
  store %struct.axe_softc* %5, %struct.axe_softc** %3, align 8
  %6 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %7 = load i32, i32* @AXE_CMD_READ_PHYID, align 4
  %8 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %9 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @axe_cmd(%struct.axe_softc* %6, i32 %7, i32 0, i32 0, i32* %10)
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %20 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %25 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %14, %1
  %31 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %32 = load i32, i32* @AXE_PHY_SEL_PRI, align 4
  %33 = call i8* @axe_get_phyno(%struct.axe_softc* %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %38 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %43 = load i32, i32* @AXE_PHY_SEL_SEC, align 4
  %44 = call i8* @axe_get_phyno(%struct.axe_softc* %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %47 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %41, %30
  %49 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %55 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %60 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %63 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AXE_FLAG_178, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %70 = call i32 @axe_ax88178_init(%struct.axe_softc* %69)
  %71 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %72 = load i32, i32* @AXE_178_CMD_READ_NODEID, align 4
  %73 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %74 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @axe_cmd(%struct.axe_softc* %71, i32 %72, i32 0, i32 0, i32* %75)
  br label %129

77:                                               ; preds = %61
  %78 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %79 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AXE_FLAG_772, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %86 = call i32 @axe_ax88772_init(%struct.axe_softc* %85)
  %87 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %88 = load i32, i32* @AXE_178_CMD_READ_NODEID, align 4
  %89 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %90 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @axe_cmd(%struct.axe_softc* %87, i32 %88, i32 0, i32 0, i32* %91)
  br label %128

93:                                               ; preds = %77
  %94 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %95 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AXE_FLAG_772A, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %102 = call i32 @axe_ax88772a_init(%struct.axe_softc* %101)
  %103 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %104 = load i32, i32* @AXE_178_CMD_READ_NODEID, align 4
  %105 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %106 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @axe_cmd(%struct.axe_softc* %103, i32 %104, i32 0, i32 0, i32* %107)
  br label %127

109:                                              ; preds = %93
  %110 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %111 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AXE_FLAG_772B, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %118 = call i32 @axe_ax88772b_init(%struct.axe_softc* %117)
  br label %126

119:                                              ; preds = %109
  %120 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %121 = load i32, i32* @AXE_172_CMD_READ_NODEID, align 4
  %122 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %123 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @axe_cmd(%struct.axe_softc* %120, i32 %121, i32 0, i32 0, i32* %124)
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %100
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %68
  %130 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %131 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AXE_FLAG_772A, align 4
  %134 = load i32, i32* @AXE_FLAG_772B, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %129
  %139 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %140 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 21, i32* %142, align 4
  %143 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %144 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 22, i32* %146, align 4
  %147 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %148 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 26, i32* %150, align 4
  br label %158

151:                                              ; preds = %129
  %152 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %153 = load i32, i32* @AXE_CMD_READ_IPG012, align 4
  %154 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %155 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @axe_cmd(%struct.axe_softc* %152, i32 %153, i32 0, i32 0, i32* %156)
  br label %158

158:                                              ; preds = %151, %138
  ret void
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i8* @axe_get_phyno(%struct.axe_softc*, i32) #1

declare dso_local i32 @axe_ax88178_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772a_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772b_init(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
