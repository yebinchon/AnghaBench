; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_InterfaceUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_InterfaceUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ipcp_InterfaceUp: unable to set ip address\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ipcp_InterfaceUp: Can't set the IFF_UP flag on %s\0A\00", align 1
@la = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcp_InterfaceUp(%struct.ipcp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipcp*, align 8
  store %struct.ipcp* %0, %struct.ipcp** %3, align 8
  %4 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %5 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %6 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %9 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ipcp_SetIPaddress(%struct.ipcp* %4, i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @LogERROR, align 4
  %15 = call i32 (i32, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %18 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = call i32 @iface_SetFlags(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @LogERROR, align 4
  %30 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %31 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  br label %54

39:                                               ; preds = %16
  %40 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %41 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @la, align 4
  %49 = load %struct.ipcp*, %struct.ipcp** %3, align 8
  %50 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @LibAliasSetAddress(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %39
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %28, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ipcp_SetIPaddress(%struct.ipcp*, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @iface_SetFlags(i32, i32) #1

declare dso_local i32 @LibAliasSetAddress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
