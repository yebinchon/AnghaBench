; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_StrToAddrAndPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_StrToAddrAndPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"StrToAddrAndPort: %s is missing port number.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.in_addr*, i32*, i32*, i8*)* @StrToAddrAndPort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StrToAddrAndPort(i8* %0, %struct.in_addr* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.in_addr* %1, %struct.in_addr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 58)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @LogWARN, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @log_Printf(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %6, align 4
  br label %38

22:                                               ; preds = %5
  %23 = load i8*, i8** %12, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %26 = call i32 @StrToAddr(i8* %24, %struct.in_addr* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %12, align 8
  store i8 58, i8* %27, align 1
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %38

31:                                               ; preds = %22
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @StrToPortRange(i8* %33, i32* %34, i32* %35, i8* %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %30, %18
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @StrToAddr(i8*, %struct.in_addr*) #1

declare dso_local i32 @StrToPortRange(i8*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
