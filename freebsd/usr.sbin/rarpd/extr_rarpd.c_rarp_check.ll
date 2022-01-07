; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_rarp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32, i32 }
%struct.ether_arp = type { i32, i32, i32, i32, i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"truncated request, got %u, expected %lu\00", align 1
@ETHERTYPE_REVARP = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@REVARP_REQUEST = common dso_local global i64 0, align 8
@ETHERTYPE_IP = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request fails sanity check\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ether/arp sender address mismatch\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ether/arp target address mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @rarp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rarp_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ether_header*, align 8
  %7 = alloca %struct.ether_arp*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.ether_header*
  store %struct.ether_header* %9, %struct.ether_header** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 8
  %12 = bitcast i32* %11 to %struct.ether_arp*
  store %struct.ether_arp* %12, %struct.ether_arp** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 36
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @logmsg(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i32 36)
  store i32 0, i32* %3, align 4
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %22 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohs(i32 %23)
  %25 = load i64, i64* @ETHERTYPE_REVARP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %58, label %27

27:                                               ; preds = %20
  %28 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %29 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = load i64, i64* @ARPHRD_ETHER, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %58, label %34

34:                                               ; preds = %27
  %35 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %36 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  %39 = load i64, i64* @REVARP_REQUEST, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %43 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = load i64, i64* @ETHERTYPE_IP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %50 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 6
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %55 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48, %41, %34, %27, %20
  %59 = load i32, i32* @LOG_DEBUG, align 4
  %60 = call i32 (i32, i8*, ...) @logmsg(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

61:                                               ; preds = %53
  %62 = load %struct.ether_header*, %struct.ether_header** %6, align 8
  %63 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %62, i32 0, i32 0
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %66 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %65, i32 0, i32 3
  %67 = bitcast i32* %66 to i8*
  %68 = call i64 @bcmp(i8* %64, i8* %67, i32 6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @LOG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @logmsg(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %75 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %74, i32 0, i32 3
  %76 = bitcast i32* %75 to i8*
  %77 = load %struct.ether_arp*, %struct.ether_arp** %7, align 8
  %78 = getelementptr inbounds %struct.ether_arp, %struct.ether_arp* %77, i32 0, i32 2
  %79 = bitcast i32* %78 to i8*
  %80 = call i64 @bcmp(i8* %76, i8* %79, i32 6)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @LOG_DEBUG, align 4
  %84 = call i32 (i32, i8*, ...) @logmsg(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %86

85:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %82, %70, %58, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @logmsg(i32, i8*, ...) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
