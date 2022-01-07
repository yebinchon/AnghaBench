; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_read_file_or_gitlink.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_read_file_or_gitlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.strbuf*)* @read_file_or_gitlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_or_gitlink(%struct.cache_entry* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.strbuf*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %6 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %7 = icmp ne %struct.cache_entry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %11 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %12 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %11, i32 0, i32 1
  %13 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %14 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @read_blob_object(%struct.strbuf* %10, i32* %12, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @read_blob_object(%struct.strbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
