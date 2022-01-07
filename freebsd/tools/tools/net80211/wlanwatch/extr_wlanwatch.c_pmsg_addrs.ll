; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwatch/extr_wlanwatch.c_pmsg_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanwatch/extr_wlanwatch.c_pmsg_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"\0Asockaddrs: \00", align 1
@stdout = common dso_local global i32 0, align 4
@addrnames = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pmsg_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmsg_addrs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @putchar(i8 signext 10)
  br label %43

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @addrnames, align 4
  %16 = call i32 @bprintf(i32 %13, i32 %14, i32 %15)
  %17 = call i32 @putchar(i8 signext 10)
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %38, %11
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = bitcast i8* %27 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %5, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %30 = call i8* @routename(%struct.sockaddr* %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %33 = call i32 @SA_SIZE(%struct.sockaddr* %32)
  %34 = load i8*, i8** %3, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %26, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %18

41:                                               ; preds = %18
  %42 = call i32 @putchar(i8 signext 10)
  br label %43

43:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bprintf(i32, i32, i32) #1

declare dso_local i8* @routename(%struct.sockaddr*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
