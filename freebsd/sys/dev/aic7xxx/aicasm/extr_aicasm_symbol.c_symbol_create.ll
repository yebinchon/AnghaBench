; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm_symbol.c_symbol_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/aicasm/extr_aicasm_symbol.c_symbol_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [28 x i8] c"Unable to create new symbol\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to strdup symbol name\00", align 1
@UNINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*)* @symbol_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @symbol_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i64 @malloc(i32 16)
  %5 = inttoptr i64 %4 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EX_SOFTWARE, align 4
  %11 = call i32 @exit(i32 %10) #3
  unreachable

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = call i32 @memset(%struct.TYPE_4__* %13, i32 0, i32 16)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32* @strdup(i8* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* @EX_SOFTWARE, align 4
  %25 = call i32 @stop(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %12
  %27 = load i32, i32* @UNINITIALIZED, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %30
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @stop(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
