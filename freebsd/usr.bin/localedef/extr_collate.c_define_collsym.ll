; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_define_collsym.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_define_collsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@collsyms = common dso_local global i32 0, align 4
@INTERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_collsym(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.TYPE_6__* @calloc(i32 1, i32 16)
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %3, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = call i32 (...) @new_pri()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @collsyms, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32* @RB_FIND(i32 %16, i32* @collsyms, %struct.TYPE_6__* %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @free(%struct.TYPE_6__* %21)
  %23 = load i32, i32* @INTERR, align 4
  br label %28

24:                                               ; preds = %9
  %25 = load i32, i32* @collsyms, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @RB_INSERT(i32 %25, i32* @collsyms, %struct.TYPE_6__* %26)
  br label %28

28:                                               ; preds = %24, %20, %6
  ret void
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @new_pri(...) #1

declare dso_local i32* @RB_FIND(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
