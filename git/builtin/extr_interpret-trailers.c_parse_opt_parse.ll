; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_parse_opt_parse.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_interpret-trailers.c_parse_opt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.process_trailer_options* }
%struct.process_trailer_options = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_opt_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_opt_parse(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.process_trailer_options*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.option*, %struct.option** %4, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load %struct.process_trailer_options*, %struct.process_trailer_options** %9, align 8
  store %struct.process_trailer_options* %10, %struct.process_trailer_options** %7, align 8
  %11 = load %struct.process_trailer_options*, %struct.process_trailer_options** %7, align 8
  %12 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.process_trailer_options*, %struct.process_trailer_options** %7, align 8
  %14 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.process_trailer_options*, %struct.process_trailer_options** %7, align 8
  %16 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BUG_ON_OPT_NEG(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @BUG_ON_OPT_ARG(i8* %19)
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @BUG_ON_OPT_ARG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
