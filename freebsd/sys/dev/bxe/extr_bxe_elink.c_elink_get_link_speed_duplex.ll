; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_get_link_speed_duplex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_get_link_speed_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i64 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32, i32, i32, i32, i32, i32 }

@ELINK_SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"phy link up\0A\00", align 1
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@ELINK_SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ELINK_LINK_10TFD = common dso_local global i32 0, align 4
@ELINK_LINK_10THD = common dso_local global i32 0, align 4
@ELINK_SPEED_100 = common dso_local global i32 0, align 4
@ELINK_LINK_100TXFD = common dso_local global i32 0, align 4
@ELINK_LINK_100TXHD = common dso_local global i32 0, align 4
@ELINK_SPEED_1000 = common dso_local global i32 0, align 4
@ELINK_LINK_1000TFD = common dso_local global i32 0, align 4
@ELINK_LINK_1000THD = common dso_local global i32 0, align 4
@ELINK_SPEED_2500 = common dso_local global i32 0, align 4
@ELINK_LINK_2500TFD = common dso_local global i32 0, align 4
@ELINK_LINK_2500THD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"link speed unsupported  gp_status 0x%x\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i32 0, align 4
@ELINK_LINK_10GTFD = common dso_local global i32 0, align 4
@ELINK_SPEED_20000 = common dso_local global i32 0, align 4
@ELINK_LINK_20GTFD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"link speed unsupported gp_status 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"phy link down\0A\00", align 1
@ELINK_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@ELINK_MAC_TYPE_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c" in elink_get_link_speed_duplex vars->link_status = %x, vars->duplex = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c" phy_link_up %x line_speed %d\0A\00", align 1
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32, i32, i32)* @elink_get_link_speed_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_get_link_speed_duplex(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.elink_phy*, align 8
  %9 = alloca %struct.elink_params*, align 8
  %10 = alloca %struct.elink_vars*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %8, align 8
  store %struct.elink_params* %1, %struct.elink_params** %9, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.elink_params*, %struct.elink_params** %9, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %14, align 8
  %18 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %19 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ELINK_SPEED_AUTO_NEG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_ENABLED, align 4
  %25 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %26 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %6
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %152

32:                                               ; preds = %29
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %34 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %36 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %38 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %39 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %12, align 4
  switch i32 %42, label %146 [
    i32 135, label %43
    i32 142, label %63
    i32 134, label %83
    i32 133, label %83
    i32 130, label %103
    i32 129, label %123
    i32 128, label %123
    i32 138, label %128
    i32 140, label %128
    i32 141, label %128
    i32 139, label %128
    i32 137, label %128
    i32 136, label %128
    i32 132, label %137
    i32 131, label %137
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @ELINK_SPEED_10, align 4
  %45 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %46 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @DUPLEX_FULL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @ELINK_LINK_10TFD, align 4
  %52 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %53 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %62

56:                                               ; preds = %43
  %57 = load i32, i32* @ELINK_LINK_10THD, align 4
  %58 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %59 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %151

63:                                               ; preds = %32
  %64 = load i32, i32* @ELINK_SPEED_100, align 4
  %65 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %66 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @DUPLEX_FULL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @ELINK_LINK_100TXFD, align 4
  %72 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %73 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load i32, i32* @ELINK_LINK_100TXHD, align 4
  %78 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %79 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %70
  br label %151

83:                                               ; preds = %32, %32
  %84 = load i32, i32* @ELINK_SPEED_1000, align 4
  %85 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %86 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @DUPLEX_FULL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @ELINK_LINK_1000TFD, align 4
  %92 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %93 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %102

96:                                               ; preds = %83
  %97 = load i32, i32* @ELINK_LINK_1000THD, align 4
  %98 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %99 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %90
  br label %151

103:                                              ; preds = %32
  %104 = load i32, i32* @ELINK_SPEED_2500, align 4
  %105 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %106 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @DUPLEX_FULL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @ELINK_LINK_2500TFD, align 4
  %112 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %113 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %122

116:                                              ; preds = %103
  %117 = load i32, i32* @ELINK_LINK_2500THD, align 4
  %118 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %119 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %110
  br label %151

123:                                              ; preds = %32, %32
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %127, i32* %7, align 4
  br label %184

128:                                              ; preds = %32, %32, %32, %32, %32, %32
  %129 = load i32, i32* @ELINK_SPEED_10000, align 4
  %130 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %131 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @ELINK_LINK_10GTFD, align 4
  %133 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %134 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %151

137:                                              ; preds = %32, %32
  %138 = load i32, i32* @ELINK_SPEED_20000, align 4
  %139 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %140 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @ELINK_LINK_20GTFD, align 4
  %142 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %143 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %151

146:                                              ; preds = %32
  %147 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %150, i32* %7, align 4
  br label %184

151:                                              ; preds = %137, %128, %122, %102, %82, %62
  br label %166

152:                                              ; preds = %29
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %154 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %155 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %156 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* @DUPLEX_FULL, align 4
  %158 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %159 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @ELINK_FLOW_CTRL_NONE, align 4
  %161 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %162 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @ELINK_MAC_TYPE_NONE, align 4
  %164 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %165 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %152, %151
  %167 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %168 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %169 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %172 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %167, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %170, i32 %173)
  %175 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %176 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %177 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.elink_vars*, %struct.elink_vars** %10, align 8
  %180 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ELINK_DEBUG_P2(%struct.bxe_softc* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %181)
  %183 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %166, %146, %123
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ELINK_DEBUG_P2(%struct.bxe_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
