; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_people_info.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_people_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32, i32 }

@cmp_string_list_util_as_integral = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.string_list*, %struct.string_list*)* @add_people_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_people_info(%struct.strbuf* %0, %struct.string_list* %1, %struct.string_list* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.string_list*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store %struct.string_list* %2, %struct.string_list** %6, align 8
  %7 = load %struct.string_list*, %struct.string_list** %5, align 8
  %8 = getelementptr inbounds %struct.string_list, %struct.string_list* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.string_list*, %struct.string_list** %5, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @cmp_string_list_util_as_integral, align 4
  %14 = call i32 @QSORT(i32 %9, i32 %12, i32 %13)
  %15 = load %struct.string_list*, %struct.string_list** %6, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.string_list*, %struct.string_list** %6, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @cmp_string_list_util_as_integral, align 4
  %22 = call i32 @QSORT(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = load %struct.string_list*, %struct.string_list** %5, align 8
  %25 = call i32 @credit_people(%struct.strbuf* %23, %struct.string_list* %24, i8 signext 97)
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = load %struct.string_list*, %struct.string_list** %6, align 8
  %28 = call i32 @credit_people(%struct.strbuf* %26, %struct.string_list* %27, i8 signext 99)
  ret void
}

declare dso_local i32 @QSORT(i32, i32, i32) #1

declare dso_local i32 @credit_people(%struct.strbuf*, %struct.string_list*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
