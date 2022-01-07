; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_next_submodule_warn_missing.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_next_submodule_warn_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_update_clone = type { i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Submodule path '%s' not initialized\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Maybe you want to use 'update --init'?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.submodule_update_clone*, %struct.strbuf*, i8*)* @next_submodule_warn_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_submodule_warn_missing(%struct.submodule_update_clone* %0, %struct.strbuf* %1, i8* %2) #0 {
  %4 = alloca %struct.submodule_update_clone*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  store %struct.submodule_update_clone* %0, %struct.submodule_update_clone** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %4, align 8
  %8 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %13 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strbuf_addf(%struct.strbuf* %12, i32 %13, i8* %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %17 = call i32 @strbuf_addch(%struct.strbuf* %16, i8 signext 10)
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %18, i32 %19)
  %21 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %22 = call i32 @strbuf_addch(%struct.strbuf* %21, i8 signext 10)
  br label %23

23:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
