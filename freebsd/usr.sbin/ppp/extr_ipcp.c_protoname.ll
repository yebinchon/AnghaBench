; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_protoname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_protoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@protoname.cftypes = internal global [7 x %struct.anon] [%struct.anon { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i32 130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i32 132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [8 x i8] c"IPADDRS\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"COMPPROTO\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"IPADDR\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PRIDNS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PRINBNS\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SECDNS\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"SECNBNS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @protoname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @protoname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, 7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @protoname.cftypes, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @protoname.cftypes, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %30

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @NumStr(i32 %28, i32* null, i32 0)
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i8* @NumStr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
