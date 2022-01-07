; ModuleID = '/home/carl/AnghaBench/git/extr_alias.c_alias_lookup.c'
source_filename = "/home/carl/AnghaBench/git/extr_alias.c_alias_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_alias_data = type { i8*, i8*, i32* }

@config_alias_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @alias_lookup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.config_alias_data, align 8
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %3, i32 0, i32 0
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  %6 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %3, i32 0, i32 1
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %3, i32 0, i32 2
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* @config_alias_cb, align 4
  %9 = call i32 @read_early_config(i32 %8, %struct.config_alias_data* %3)
  %10 = getelementptr inbounds %struct.config_alias_data, %struct.config_alias_data* %3, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

declare dso_local i32 @read_early_config(i32, %struct.config_alias_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
