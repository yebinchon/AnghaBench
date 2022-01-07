; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_write_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdev.c_fw_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_drv1 = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.tcode_info* }
%struct.tcode_info = type { i32 }
%struct.uio = type { i32 }
%struct.fw_xfer = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32 }
%struct.fw_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@M_FWXFER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fw_xferwake = common dso_local global i32 0, align 4
@FWXF_RCVD = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_drv1*, %struct.uio*, i32)* @fw_write_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_write_async(%struct.fw_drv1* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_drv1*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_xfer*, align 8
  %9 = alloca %struct.fw_pkt, align 8
  %10 = alloca %struct.tcode_info*, align 8
  %11 = alloca i32, align 4
  store %struct.fw_drv1* %0, %struct.fw_drv1** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @bzero(%struct.fw_pkt* %9, i32 8)
  %13 = ptrtoint %struct.fw_pkt* %9 to i64
  %14 = load %struct.uio*, %struct.uio** %6, align 8
  %15 = call i32 @uiomove(i64 %13, i32 4, %struct.uio* %14)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %144

19:                                               ; preds = %3
  %20 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %21 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.tcode_info*, %struct.tcode_info** %23, align 8
  %25 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %24, i64 %28
  store %struct.tcode_info* %29, %struct.tcode_info** %10, align 8
  %30 = ptrtoint %struct.fw_pkt* %9 to i64
  %31 = add i64 %30, 4
  %32 = load %struct.tcode_info*, %struct.tcode_info** %10, align 8
  %33 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load %struct.uio*, %struct.uio** %6, align 8
  %39 = call i32 @uiomove(i64 %31, i32 %37, %struct.uio* %38)
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %144

43:                                               ; preds = %19
  %44 = load i32, i32* @M_FWXFER, align 4
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call %struct.fw_xfer* @fw_xfer_alloc_buf(i32 %44, i32 %47, i32 %48)
  store %struct.fw_xfer* %49, %struct.fw_xfer** %8, align 8
  %50 = icmp eq %struct.fw_xfer* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %4, align 4
  br label %144

53:                                               ; preds = %43
  %54 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %55 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = call i32 @bcopy(%struct.fw_pkt* %9, i32* %56, i32 8)
  %58 = load %struct.uio*, %struct.uio** %6, align 8
  %59 = getelementptr inbounds %struct.uio, %struct.uio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %62 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %53
  %69 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %70 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = ptrtoint i32* %73 to i64
  %75 = load %struct.uio*, %struct.uio** %6, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.uio*, %struct.uio** %6, align 8
  %79 = call i32 @uiomove(i64 %74, i32 %77, %struct.uio* %78)
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %140

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %53
  %84 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %85 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %88 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %87, i32 0, i32 2
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %88, align 8
  %89 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %90 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %89, i32 0, i32 5
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* @fw_xferwake, align 4
  %92 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %93 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %95 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32 2, i32* %96, align 4
  %97 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %98 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %97, i32 0, i32 2
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %101 = call i32 @fw_asyreq(%struct.TYPE_10__* %99, i32 -1, %struct.fw_xfer* %100)
  store i32 %101, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  br label %140

104:                                              ; preds = %83
  %105 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %106 = call i32 @fw_xferwait(%struct.fw_xfer* %105)
  store i32 %106, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %140

109:                                              ; preds = %104
  %110 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %111 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %116 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %11, align 4
  br label %140

118:                                              ; preds = %109
  %119 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %120 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @FWXF_RCVD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %118
  %126 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %127 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %126, i32 0, i32 2
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = call i32 @FW_GLOCK(%struct.TYPE_10__* %128)
  %130 = load %struct.fw_drv1*, %struct.fw_drv1** %5, align 8
  %131 = getelementptr inbounds %struct.fw_drv1, %struct.fw_drv1* %130, i32 0, i32 0
  %132 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %133 = load i32, i32* @link, align 4
  %134 = call i32 @STAILQ_INSERT_TAIL(i32* %131, %struct.fw_xfer* %132, i32 %133)
  %135 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %136 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i32 @FW_GUNLOCK(%struct.TYPE_10__* %137)
  store i32 0, i32* %4, align 4
  br label %144

139:                                              ; preds = %118
  br label %140

140:                                              ; preds = %139, %114, %108, %103, %81
  %141 = load %struct.fw_xfer*, %struct.fw_xfer** %8, align 8
  %142 = call i32 @fw_xfer_free(%struct.fw_xfer* %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %125, %51, %41, %17
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @bzero(%struct.fw_pkt*, i32) #1

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #1

declare dso_local %struct.fw_xfer* @fw_xfer_alloc_buf(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.fw_pkt*, i32*, i32) #1

declare dso_local i32 @fw_asyreq(%struct.TYPE_10__*, i32, %struct.fw_xfer*) #1

declare dso_local i32 @fw_xferwait(%struct.fw_xfer*) #1

declare dso_local i32 @FW_GLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.fw_xfer*, i32) #1

declare dso_local i32 @FW_GUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @fw_xfer_free(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
