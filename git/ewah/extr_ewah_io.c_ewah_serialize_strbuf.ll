; ModuleID = '/home/carl/AnghaBench/git/ewah/extr_ewah_io.c_ewah_serialize_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/ewah/extr_ewah_io.c_ewah_serialize_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ewah_bitmap = type { i32 }
%struct.strbuf = type { i32 }

@write_strbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ewah_serialize_strbuf(%struct.ewah_bitmap* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.ewah_bitmap*, align 8
  %4 = alloca %struct.strbuf*, align 8
  store %struct.ewah_bitmap* %0, %struct.ewah_bitmap** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %5 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %3, align 8
  %6 = load i32, i32* @write_strbuf, align 4
  %7 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %8 = call i32 @ewah_serialize_to(%struct.ewah_bitmap* %5, i32 %6, %struct.strbuf* %7)
  ret i32 %8
}

declare dso_local i32 @ewah_serialize_to(%struct.ewah_bitmap*, i32, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
