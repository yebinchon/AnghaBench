; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_ident_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_ident_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_filter = type { i32 }
%struct.object_id = type { i32 }
%struct.ident_filter = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c": %s $\00", align 1
@ident_vtbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stream_filter* (%struct.object_id*)* @ident_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stream_filter* @ident_filter(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.ident_filter*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %4 = call %struct.ident_filter* @xmalloc(i32 24)
  store %struct.ident_filter* %4, %struct.ident_filter** %3, align 8
  %5 = load %struct.ident_filter*, %struct.ident_filter** %3, align 8
  %6 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.object_id*, %struct.object_id** %2, align 8
  %9 = call i32 @oid_to_hex(%struct.object_id* %8)
  %10 = call i32 @xsnprintf(i32 %7, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ident_filter*, %struct.ident_filter** %3, align 8
  %12 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %11, i32 0, i32 2
  %13 = call i32 @strbuf_init(i32* %12, i32 0)
  %14 = load %struct.ident_filter*, %struct.ident_filter** %3, align 8
  %15 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* @ident_vtbl, i32** %16, align 8
  %17 = load %struct.ident_filter*, %struct.ident_filter** %3, align 8
  %18 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.ident_filter*, %struct.ident_filter** %3, align 8
  %20 = bitcast %struct.ident_filter* %19 to %struct.stream_filter*
  ret %struct.stream_filter* %20
}

declare dso_local %struct.ident_filter* @xmalloc(i32) #1

declare dso_local i32 @xsnprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
