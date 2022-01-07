; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_log_wep.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_log_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ieee80211_frame = type { i32, i32, %struct.timeval }
%struct.timeval = type { i32 }
%struct.pcap_pkthdr = type { i32, i32, %struct.timeval }

@.str = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@weplog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"short write %d out of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_wep(%struct.ieee80211_frame* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcap_pkthdr, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i8*, align 8
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %9, i64 1
  %11 = bitcast %struct.ieee80211_frame* %10 to i8*
  store i8* %11, i8** %8, align 8
  %12 = call i32 @memset(%struct.pcap_pkthdr* %6, i32 0, i32 12)
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %6, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %6, i32 0, i32 2
  %22 = bitcast %struct.timeval* %21 to i8*
  %23 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @weplog, i32 0, i32 2), align 4
  %25 = call i32 @write(i32 %24, %struct.pcap_pkthdr* %6, i32 12)
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 12
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @weplog, i32 0, i32 2), align 4
  %32 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %33 = bitcast %struct.ieee80211_frame* %32 to %struct.pcap_pkthdr*
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @write(i32 %31, %struct.pcap_pkthdr* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #4
  unreachable

41:                                               ; preds = %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @time_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = call i32 @exit(i32 1) #4
  unreachable

50:                                               ; preds = %41
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @weplog, i32 0, i32 1), align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @memcpy(i32 %51, i8* %52, i32 3)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @weplog, i32 0, i32 0), align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @weplog, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @memset(%struct.pcap_pkthdr*, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write(i32, %struct.pcap_pkthdr*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @time_print(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
