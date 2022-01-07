; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_can_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_can_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@can_write.arp_ip = internal global [16 x i8] zeroinitializer, align 16
@state = common dso_local global i32 0, align 4
@SENDING_AUTH = common dso_local global i32 0, align 4
@SENDING_ASSOC = common dso_local global i32 0, align 4
@prgainfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@min_prga = common dso_local global i32 0, align 4
@decryptstate = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@taptx_len = common dso_local global i32 0, align 4
@taptx = common dso_local global i32 0, align 4
@netip = common dso_local global i8* null, align 8
@rtrmac = common dso_local global i8* null, align 8
@netip_arg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@arpsend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Sending arp request for: %s\0A\00", align 1
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@myip = common dso_local global i32 0, align 4
@mymac = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@floodip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @state, align 4
  switch i32 %4, label %101 [
    i32 130, label %5
    i32 128, label %9
    i32 129, label %13
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @send_auth(i32 %6)
  %8 = load i32, i32* @SENDING_AUTH, align 4
  store i32 %8, i32* @state, align 4
  br label %101

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @send_assoc(i32 %10)
  %12 = load i32, i32* @SENDING_ASSOC, align 4
  store i32 %12, i32* @state, align 4
  br label %101

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prgainfo, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prgainfo, i32 0, i32 1), align 4
  %18 = load i32, i32* @min_prga, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @discover_prga(i32 %21)
  br label %101

23:                                               ; preds = %16, %13
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @decryptstate, i32 0, i32 0), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @decrypt(i32 %27)
  br label %101

29:                                               ; preds = %23
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @prgainfo, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %101

33:                                               ; preds = %29
  %34 = load i32, i32* @taptx_len, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @taptx, align 4
  %39 = load i32, i32* @taptx_len, align 4
  %40 = call i32 @send_frame(i32 %37, i32 %38, i32 %39)
  store i32 0, i32* @taptx_len, align 4
  br label %101

41:                                               ; preds = %33
  %42 = load i8*, i8** @netip, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %41
  %45 = load i8*, i8** @rtrmac, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %81, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @netip, align 8
  %49 = call i32 @strcpy(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @can_write.arp_ip, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @netip_arg, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %47
  %53 = call i8* @strchr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @can_write.arp_ip, i64 0, i64 0), i8 signext 46)
  store i8* %53, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @assert(i8* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 46)
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @assert(i8* %59)
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  %63 = call i8* @strchr(i8* %62, i8 signext 46)
  store i8* %63, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @assert(i8* %64)
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = call i32 @strcpy(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %52, %47
  %70 = call i32 @gettimeofday(i32* @arpsend, i32* null)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = call i32 @time_print(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @can_write.arp_ip, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @ARPOP_REQUEST, align 4
  %78 = load i32, i32* @myip, align 4
  %79 = load i32, i32* @mymac, align 4
  %80 = call i32 @send_arp(i32 %76, i32 %77, i32 %78, i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @can_write.arp_ip, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* inttoptr (i64 1 to i8*), i8** @rtrmac, align 8
  br label %101

81:                                               ; preds = %44, %41
  %82 = load i8*, i8** @rtrmac, align 8
  %83 = icmp ugt i8* %82, inttoptr (i64 1 to i8*)
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i8*, i8** @netip, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, i32* @floodip, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @flood_inet(i32 %91)
  br label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @ARPOP_REQUEST, align 4
  %96 = load i32, i32* @myip, align 4
  %97 = load i32, i32* @mymac, align 4
  %98 = call i32 @send_arp(i32 %94, i32 %95, i32 %96, i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @can_write.arp_ip, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %93, %90
  br label %101

100:                                              ; preds = %84, %81
  br label %101

101:                                              ; preds = %1, %100, %99, %74, %36, %32, %26, %20, %9, %5
  ret void
}

declare dso_local i32 @send_auth(i32) #1

declare dso_local i32 @send_assoc(i32) #1

declare dso_local i32 @discover_prga(i32) #1

declare dso_local i32 @decrypt(i32) #1

declare dso_local i32 @send_frame(i32, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @time_print(i8*, i8*) #1

declare dso_local i32 @send_arp(i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @flood_inet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
