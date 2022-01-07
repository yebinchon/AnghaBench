; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_urndis.c_urndis_ctrl_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urndis_softc = type { i64 }
%struct.rndis_comp_hdr = type { i32 }
%struct.rndis_init_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [141 x i8] c"len %u rid %u status 0x%x ver_major %u ver_minor %u devflags 0x%x medium 0x%x pktmaxcnt %u pktmaxsz %u align %u aflistoffset %u aflistsz %u\0A\00", align 1
@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"init failed 0x%x\0A\00", align 1
@RNDIS_DF_CONNECTIONLESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"wrong device type (current type: 0x%x)\0A\00", align 1
@RNDIS_STATUS_FAILURE = common dso_local global i64 0, align 8
@RNDIS_MEDIUM_802_3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"medium not 802.3 (current medium: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urndis_softc*, %struct.rndis_comp_hdr*)* @urndis_ctrl_handle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urndis_ctrl_handle_init(%struct.urndis_softc* %0, %struct.rndis_comp_hdr* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.urndis_softc*, align 8
  %5 = alloca %struct.rndis_comp_hdr*, align 8
  %6 = alloca %struct.rndis_init_comp*, align 8
  store %struct.urndis_softc* %0, %struct.urndis_softc** %4, align 8
  store %struct.rndis_comp_hdr* %1, %struct.rndis_comp_hdr** %5, align 8
  %7 = load %struct.rndis_comp_hdr*, %struct.rndis_comp_hdr** %5, align 8
  %8 = bitcast %struct.rndis_comp_hdr* %7 to %struct.rndis_init_comp*
  store %struct.rndis_init_comp* %8, %struct.rndis_init_comp** %6, align 8
  %9 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %10 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le32toh(i32 %11)
  %13 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %14 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32toh(i32 %15)
  %17 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %18 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32toh(i32 %19)
  %21 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %22 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32toh(i32 %23)
  %25 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %26 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32toh(i32 %27)
  %29 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %30 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32toh(i32 %31)
  %33 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %34 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32toh(i32 %35)
  %37 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %38 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32toh(i32 %39)
  %41 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %42 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32toh(i32 %43)
  %45 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %46 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32toh(i32 %47)
  %49 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %50 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le32toh(i32 %51)
  %53 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %54 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32toh(i32 %55)
  %57 = call i32 (i8*, i64, ...) @DPRINTF(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %16, i64 %20, i64 %24, i64 %28, i64 %32, i64 %36, i64 %40, i64 %44, i64 %48, i64 %52, i64 %56)
  %58 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %59 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32toh(i32 %60)
  %62 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %2
  %65 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %66 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32toh(i32 %67)
  %69 = call i32 (i8*, i64, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  %70 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %71 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le32toh(i32 %72)
  store i64 %73, i64* %3, align 8
  br label %113

74:                                               ; preds = %2
  %75 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %76 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32toh(i32 %77)
  %79 = load i64, i64* @RNDIS_DF_CONNECTIONLESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %83 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32toh(i32 %84)
  %86 = call i32 (i8*, i64, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* @RNDIS_STATUS_FAILURE, align 8
  store i64 %87, i64* %3, align 8
  br label %113

88:                                               ; preds = %74
  %89 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %90 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32toh(i32 %91)
  %93 = load i64, i64* @RNDIS_MEDIUM_802_3, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %97 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32toh(i32 %98)
  %100 = call i32 (i8*, i64, ...) @DPRINTF(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* @RNDIS_STATUS_FAILURE, align 8
  store i64 %101, i64* %3, align 8
  br label %113

102:                                              ; preds = %88
  %103 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %104 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le32toh(i32 %105)
  %107 = load %struct.urndis_softc*, %struct.urndis_softc** %4, align 8
  %108 = getelementptr inbounds %struct.urndis_softc, %struct.urndis_softc* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.rndis_init_comp*, %struct.rndis_init_comp** %6, align 8
  %110 = getelementptr inbounds %struct.rndis_init_comp, %struct.rndis_init_comp* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @le32toh(i32 %111)
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %102, %95, %81, %64
  %114 = load i64, i64* %3, align 8
  ret i64 %114
}

declare dso_local i32 @DPRINTF(i8*, i64, ...) #1

declare dso_local i64 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
