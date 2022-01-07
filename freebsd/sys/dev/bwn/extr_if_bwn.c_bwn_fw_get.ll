; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_fw_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_fw_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__, %struct.bwn_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.bwn_softc = type { i32 }
%struct.bwn_fwfile = type { i8*, i32, %struct.firmware* }
%struct.firmware = type { i32, i64 }
%struct.bwn_fwhdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bwn%s_v4_%s%s\00", align 1
@BWN_FWTYPE_OPENSOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-open\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BWN_PHYTYPE_LP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"lp_\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"the fw file(%s) not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"the fw file(%s) format error\0A\00", align 1
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, i32, i8*, %struct.bwn_fwfile*)* @bwn_fw_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_fw_get(%struct.bwn_mac* %0, i32 %1, i8* %2, %struct.bwn_fwfile* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bwn_fwfile*, align 8
  %10 = alloca %struct.bwn_fwhdr*, align 8
  %11 = alloca %struct.bwn_softc*, align 8
  %12 = alloca %struct.firmware*, align 8
  %13 = alloca [64 x i8], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.bwn_fwfile* %3, %struct.bwn_fwfile** %9, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %15 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %14, i32 0, i32 1
  %16 = load %struct.bwn_softc*, %struct.bwn_softc** %15, align 8
  store %struct.bwn_softc* %16, %struct.bwn_softc** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %21 = call i32 @bwn_do_release_fw(%struct.bwn_fwfile* %20)
  store i32 0, i32* %5, align 4
  br label %133

22:                                               ; preds = %4
  %23 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %24 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %29 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %35 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %133

41:                                               ; preds = %33, %27
  %42 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %43 = call i32 @bwn_do_release_fw(%struct.bwn_fwfile* %42)
  br label %44

44:                                               ; preds = %41, %22
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @BWN_FWTYPE_OPENSOURCE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %51 = load %struct.bwn_mac*, %struct.bwn_mac** %6, align 8
  %52 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BWN_PHYTYPE_LP, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %58, i8* %59)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %62 = call %struct.firmware* @firmware_get(i8* %61)
  store %struct.firmware* %62, %struct.firmware** %12, align 8
  %63 = load %struct.firmware*, %struct.firmware** %12, align 8
  %64 = icmp eq %struct.firmware* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %44
  %66 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  %67 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %70 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %5, align 4
  br label %133

72:                                               ; preds = %44
  %73 = load %struct.firmware*, %struct.firmware** %12, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %76, 12
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %119

79:                                               ; preds = %72
  %80 = load %struct.firmware*, %struct.firmware** %12, align 8
  %81 = getelementptr inbounds %struct.firmware, %struct.firmware* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.bwn_fwhdr*
  store %struct.bwn_fwhdr* %83, %struct.bwn_fwhdr** %10, align 8
  %84 = load %struct.bwn_fwhdr*, %struct.bwn_fwhdr** %10, align 8
  %85 = getelementptr inbounds %struct.bwn_fwhdr, %struct.bwn_fwhdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %108 [
    i32 128, label %87
    i32 129, label %87
    i32 130, label %101
  ]

87:                                               ; preds = %79, %79
  %88 = load %struct.bwn_fwhdr*, %struct.bwn_fwhdr** %10, align 8
  %89 = getelementptr inbounds %struct.bwn_fwhdr, %struct.bwn_fwhdr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be32toh(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = load %struct.firmware*, %struct.firmware** %12, align 8
  %94 = getelementptr inbounds %struct.firmware, %struct.firmware* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 12
  %98 = icmp ne i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %119

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %79, %100
  %102 = load %struct.bwn_fwhdr*, %struct.bwn_fwhdr** %10, align 8
  %103 = getelementptr inbounds %struct.bwn_fwhdr, %struct.bwn_fwhdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %119

107:                                              ; preds = %101
  br label %109

108:                                              ; preds = %79
  br label %119

109:                                              ; preds = %107
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %112 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.firmware*, %struct.firmware** %12, align 8
  %114 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %115 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %114, i32 0, i32 2
  store %struct.firmware* %113, %struct.firmware** %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.bwn_fwfile*, %struct.bwn_fwfile** %9, align 8
  %118 = getelementptr inbounds %struct.bwn_fwfile, %struct.bwn_fwfile* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %5, align 4
  br label %133

119:                                              ; preds = %108, %106, %99, %78
  %120 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  %121 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %124 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %123)
  %125 = load %struct.firmware*, %struct.firmware** %12, align 8
  %126 = icmp ne %struct.firmware* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load %struct.firmware*, %struct.firmware** %12, align 8
  %129 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %130 = call i32 @firmware_put(%struct.firmware* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load i32, i32* @EPROTO, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %109, %65, %40, %19
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @bwn_do_release_fw(%struct.bwn_fwfile*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
