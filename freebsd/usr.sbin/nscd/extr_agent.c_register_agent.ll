; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_register_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_register_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_table = type { i32, %struct.agent** }
%struct.agent = type { i32 }

@agent_cmp_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_agent(%struct.agent_table* %0, %struct.agent* %1) #0 {
  %3 = alloca %struct.agent_table*, align 8
  %4 = alloca %struct.agent*, align 8
  %5 = alloca %struct.agent**, align 8
  %6 = alloca i64, align 8
  store %struct.agent_table* %0, %struct.agent_table** %3, align 8
  store %struct.agent* %1, %struct.agent** %4, align 8
  %7 = call i32 @TRACE_IN(void (%struct.agent_table*, %struct.agent*)* @register_agent)
  %8 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %9 = icmp ne %struct.agent_table* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.agent*, %struct.agent** %4, align 8
  %13 = icmp ne %struct.agent* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %17 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call %struct.agent** @malloc(i32 %23)
  store %struct.agent** %24, %struct.agent*** %5, align 8
  %25 = load %struct.agent**, %struct.agent*** %5, align 8
  %26 = icmp ne %struct.agent** %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.agent**, %struct.agent*** %5, align 8
  %30 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %31 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %30, i32 0, i32 1
  %32 = load %struct.agent**, %struct.agent*** %31, align 8
  %33 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %34 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(%struct.agent** %29, %struct.agent** %32, i32 %38)
  %40 = load %struct.agent*, %struct.agent** %4, align 8
  %41 = load %struct.agent**, %struct.agent*** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds %struct.agent*, %struct.agent** %41, i64 %43
  store %struct.agent* %40, %struct.agent** %44, align 8
  %45 = load %struct.agent**, %struct.agent*** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @agent_cmp_func, align 4
  %48 = call i32 @qsort(%struct.agent** %45, i64 %46, i32 8, i32 %47)
  %49 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %50 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %49, i32 0, i32 1
  %51 = load %struct.agent**, %struct.agent*** %50, align 8
  %52 = call i32 @free(%struct.agent** %51)
  %53 = load %struct.agent**, %struct.agent*** %5, align 8
  %54 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %55 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %54, i32 0, i32 1
  store %struct.agent** %53, %struct.agent*** %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.agent_table*, %struct.agent_table** %3, align 8
  %59 = getelementptr inbounds %struct.agent_table, %struct.agent_table* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i32 @TRACE_OUT(void (%struct.agent_table*, %struct.agent*)* @register_agent)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.agent_table*, %struct.agent*)*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.agent** @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.agent**, %struct.agent**, i32) #1

declare dso_local i32 @qsort(%struct.agent**, i64, i32, i32) #1

declare dso_local i32 @free(%struct.agent**) #1

declare dso_local i32 @TRACE_OUT(void (%struct.agent_table*, %struct.agent*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
