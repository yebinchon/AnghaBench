; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_enter_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_enter_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.jail = type { i8*, i8*, i8*, i32, i32, %struct.in6_addr*, %struct.in_addr*, i32 }
%struct.in_addr = type { i32 }

@JAIL_API_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"regressions/priv\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"test %s: jail\00", align 1
@IN6ADDR_LOOPBACK_INIT = common dso_local global %struct.in6_addr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @enter_jail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_jail(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jail, align 8
  %4 = alloca %struct.in_addr, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @bzero(%struct.jail* %3, i32 56)
  %6 = load i32, i32* @JAIL_API_VERSION, align 4
  %7 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 7
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %11 = load i32, i32* @INADDR_LOOPBACK, align 4
  %12 = call i32 @htonl(i32 %11)
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 3
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.jail, %struct.jail* %3, i32 0, i32 6
  store %struct.in_addr* %4, %struct.in_addr** %15, align 8
  %16 = call i64 @jail(%struct.jail* %3)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @bzero(%struct.jail*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @jail(%struct.jail*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
