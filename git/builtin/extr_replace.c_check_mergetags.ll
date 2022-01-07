; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_check_mergetags.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_check_mergetags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.check_mergetag_data = type { i32, i8** }

@check_one_mergetag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, i32, i8**)* @check_mergetags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mergetags(%struct.commit* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.check_mergetag_data, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %7, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = getelementptr inbounds %struct.check_mergetag_data, %struct.check_mergetag_data* %7, i32 0, i32 1
  store i8** %10, i8*** %11, align 8
  %12 = load i32, i32* @check_one_mergetag, align 4
  %13 = load %struct.commit*, %struct.commit** %4, align 8
  %14 = call i32 @for_each_mergetag(i32 %12, %struct.commit* %13, %struct.check_mergetag_data* %7)
  ret i32 %14
}

declare dso_local i32 @for_each_mergetag(i32, %struct.commit*, %struct.check_mergetag_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
