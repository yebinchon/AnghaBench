; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_InterfaceUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_InterfaceUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6cp = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ipv6cp_InterfaceUp: unable to set ipv6 address\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ipv6cp_InterfaceUp: Can't set the IFF_UP flag on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipv6cp_InterfaceUp(%struct.ipv6cp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipv6cp*, align 8
  store %struct.ipv6cp* %0, %struct.ipv6cp** %3, align 8
  %4 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %5 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %6 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %9 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ipcp_SetIPv6address(%struct.ipv6cp* %4, i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @LogERROR, align 4
  %15 = call i32 (i32, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %18 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = call i32 @iface_SetFlags(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @LogERROR, align 4
  %30 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %31 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %28, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ipcp_SetIPv6address(%struct.ipv6cp*, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @iface_SetFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
