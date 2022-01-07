; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/agents/extr_passwd.c_init_passwd_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/agents/extr_passwd.c_init_passwd_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent = type { i32 }
%struct.common_agent = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@COMMON_AGENT = common dso_local global i32 0, align 4
@passwd_lookup_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agent* @init_passwd_agent() #0 {
  %1 = alloca %struct.common_agent*, align 8
  %2 = call i32 @TRACE_IN(%struct.agent* (...)* bitcast (%struct.agent* ()* @init_passwd_agent to %struct.agent* (...)*))
  %3 = call %struct.common_agent* @calloc(i32 1, i32 24)
  store %struct.common_agent* %3, %struct.common_agent** %1, align 8
  %4 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %5 = icmp ne %struct.common_agent* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32* @strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %10 = getelementptr inbounds %struct.common_agent, %struct.common_agent* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %13 = getelementptr inbounds %struct.common_agent, %struct.common_agent* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @COMMON_AGENT, align 4
  %20 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %21 = getelementptr inbounds %struct.common_agent, %struct.common_agent* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @passwd_lookup_func, align 4
  %24 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %25 = getelementptr inbounds %struct.common_agent, %struct.common_agent* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = call i32 @TRACE_OUT(%struct.agent* (...)* bitcast (%struct.agent* ()* @init_passwd_agent to %struct.agent* (...)*))
  %27 = load %struct.common_agent*, %struct.common_agent** %1, align 8
  %28 = bitcast %struct.common_agent* %27 to %struct.agent*
  ret %struct.agent* %28
}

declare dso_local i32 @TRACE_IN(%struct.agent* (...)*) #1

declare dso_local %struct.common_agent* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @TRACE_OUT(%struct.agent* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
