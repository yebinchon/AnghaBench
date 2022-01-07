; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_construct_fullname.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_construct_fullname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.cache_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.repository*, %struct.cache_entry*)* @construct_fullname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_fullname(%struct.strbuf* %0, %struct.repository* %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.repository* %1, %struct.repository** %5, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %9 = load %struct.repository*, %struct.repository** %5, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %15 = load %struct.repository*, %struct.repository** %5, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %20, i32 %23)
  ret void
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
