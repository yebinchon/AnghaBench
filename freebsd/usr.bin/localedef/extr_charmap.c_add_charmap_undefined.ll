; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_undefined.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_charmap.c_add_charmap_undefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@cmap_sym = common dso_local global i32 0, align 4
@undefok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"undefined symbol <%s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_charmap_undefined(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i8* %5, i8** %6, align 8
  %7 = load i32, i32* @cmap_sym, align 4
  %8 = call %struct.TYPE_4__* @RB_FIND(i32 %7, i32* @cmap_sym, %struct.TYPE_4__* %3)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load i64, i64* @undefok, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %11
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @add_charmap_impl(i8* %22, i32 -1, i32 0)
  br label %27

24:                                               ; preds = %14, %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %19
  ret void
}

declare dso_local %struct.TYPE_4__* @RB_FIND(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @add_charmap_impl(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
