; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ip_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ip.c_ip_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }
%struct.tun_data = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ip_Input: %s: Packet too large (got %zd, max %d)\0A\00", align 1
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ip_Input: %s: wrote %zd, got %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ip_Input: %s: wrote %zd, got %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bundle*, %struct.link*, %struct.mbuf*, i32)* @ip_Input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ip_Input(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tun_data, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %6, align 8
  store %struct.link* %1, %struct.link** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %17 = call i64 @m_length(%struct.mbuf* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ugt i64 %18, 8
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i32, i32* @LogWARN, align 4
  %22 = load %struct.link*, %struct.link** %7, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @log_Printf(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25, i32 8)
  %27 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  store i64 0, i64* %5, align 8
  br label %116

29:                                               ; preds = %4
  %30 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %31 = getelementptr inbounds %struct.tun_data, %struct.tun_data* %12, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @mbuf_Read(%struct.mbuf* %30, i8* %32, i64 %33)
  store i32 0, i32* %14, align 4
  %35 = load %struct.bundle*, %struct.bundle** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.tun_data, %struct.tun_data* %12, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.bundle*, %struct.bundle** %6, align 8
  %41 = getelementptr inbounds %struct.bundle, %struct.bundle* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i64 @PacketCheck(%struct.bundle* %35, i32 %36, i8* %38, i64 %39, i32* %42, i32* null, i32* %14)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %116

46:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  %47 = getelementptr inbounds %struct.tun_data, %struct.tun_data* %12, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.bundle*, %struct.bundle** %6, align 8
  %51 = getelementptr inbounds %struct.bundle, %struct.bundle* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @FilterCheck(i8* %48, i32 %49, i32* %52, i32* %15)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %55
  %61 = load %struct.bundle*, %struct.bundle** %6, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @bundle_StartIdleTimer(%struct.bundle* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %46
  %65 = load %struct.bundle*, %struct.bundle** %6, align 8
  %66 = getelementptr inbounds %struct.bundle, %struct.bundle* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @htonl(i32 %71)
  %73 = getelementptr inbounds %struct.tun_data, %struct.tun_data* %12, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 8
  store i64 %76, i64* %11, align 8
  %77 = bitcast %struct.tun_data* %12 to i8*
  store i8* %77, i8** %13, align 8
  br label %81

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.tun_data, %struct.tun_data* %12, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %13, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.bundle*, %struct.bundle** %6, align 8
  %83 = getelementptr inbounds %struct.bundle, %struct.bundle* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @write(i32 %85, i8* %86, i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %81
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* @LogERROR, align 4
  %98 = load %struct.link*, %struct.link** %7, align 8
  %99 = getelementptr inbounds %struct.link, %struct.link* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @strerror(i32 %102)
  %104 = call i32 @log_Printf(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %101, i32 %103)
  br label %113

105:                                              ; preds = %93
  %106 = load i32, i32* @LogERROR, align 4
  %107 = load %struct.link*, %struct.link** %7, align 8
  %108 = getelementptr inbounds %struct.link, %struct.link* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @log_Printf(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %109, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %96
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i64, i64* %11, align 8
  store i64 %115, i64* %5, align 8
  br label %116

116:                                              ; preds = %114, %45, %20
  %117 = load i64, i64* %5, align 8
  ret i64 %117
}

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mbuf_Read(%struct.mbuf*, i8*, i64) #1

declare dso_local i64 @PacketCheck(%struct.bundle*, i32, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @FilterCheck(i8*, i32, i32*, i32*) #1

declare dso_local i32 @bundle_StartIdleTimer(%struct.bundle*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
