; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc_read_subchannel = type { i32, %struct.cd_sub_channel_info*, i32, i32 }
%struct.cd_sub_channel_info = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@msf = common dso_local global i64 0, align 8
@CD_MSF_FORMAT = common dso_local global i32 0, align 4
@CD_LBA_FORMAT = common dso_local global i32 0, align 4
@CD_CURRENT_POSITION = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@CDIOCREADSUBCHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ioc_read_subchannel, align 8
  %11 = alloca %struct.cd_sub_channel_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i32 @bzero(%struct.ioc_read_subchannel* %10, i32 24)
  %16 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  store %struct.cd_sub_channel_info* %11, %struct.cd_sub_channel_info** %16, align 8
  %17 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 0
  store i32 24, i32* %17, align 8
  %18 = load i64, i64* @msf, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CD_MSF_FORMAT, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @CD_LBA_FORMAT, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @CD_CURRENT_POSITION, align 4
  %28 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @fd, align 4
  %30 = load i32, i32* @CDIOCREADSUBCHANNEL, align 4
  %31 = bitcast %struct.ioc_read_subchannel* %10 to i8*
  %32 = call i64 @ioctl(i32 %29, i32 %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %95

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %37 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %36, align 8
  %38 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* @msf, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %47 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %46, align 8
  %48 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %56 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %55, align 8
  %57 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %65 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %64, align 8
  %66 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %89

73:                                               ; preds = %35
  %74 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %75 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %74, align 8
  %76 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohl(i32 %80)
  %82 = call i32 @lba2msf(i32 %81, i32* %12, i32* %13, i32* %14)
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %73, %45
  %90 = getelementptr inbounds %struct.ioc_read_subchannel, %struct.ioc_read_subchannel* %10, i32 0, i32 1
  %91 = load %struct.cd_sub_channel_info*, %struct.cd_sub_channel_info** %90, align 8
  %92 = getelementptr inbounds %struct.cd_sub_channel_info, %struct.cd_sub_channel_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %34
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @bzero(%struct.ioc_read_subchannel*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @lba2msf(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
