; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"int64_t\00", align 1
@DEF_UNION = common dso_local global i32 0, align 4
@DEF_PROGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"voids allowed only inside union and program definitions with one argument\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"expected type specifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32)* @get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_type(i8** %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8**, i8*** %4, align 8
  store i8* null, i8** %8, align 8
  %9 = call i32 @get_token(%struct.TYPE_5__* %7)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %54 [
    i32 138, label %12
    i32 131, label %16
    i32 141, label %16
    i32 130, label %16
    i32 129, label %24
    i32 133, label %27
    i32 136, label %30
    i32 139, label %33
    i32 128, label %36
    i32 132, label %50
    i32 135, label %50
    i32 143, label %50
    i32 137, label %50
    i32 140, label %50
    i32 142, label %50
    i32 144, label %50
    i32 134, label %50
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8**, i8*** %5, align 8
  store i8* %14, i8** %15, align 8
  br label %56

16:                                               ; preds = %3, %3, %3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** %4, align 8
  store i8* %18, i8** %19, align 8
  %20 = call i32 @scan(i32 138, %struct.TYPE_5__* %7)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  br label %56

24:                                               ; preds = %3
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @unsigned_dec(i8** %25)
  br label %56

27:                                               ; preds = %3
  %28 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = call i32 @peekscan(i32 137, %struct.TYPE_5__* %7)
  br label %56

30:                                               ; preds = %3
  %31 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = call i32 @peekscan(i32 137, %struct.TYPE_5__* %7)
  br label %56

33:                                               ; preds = %3
  %34 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = call i32 @peekscan(i32 137, %struct.TYPE_5__* %7)
  br label %56

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @DEF_UNION, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DEF_PROGRAM, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40, %36
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** %5, align 8
  store i8* %48, i8** %49, align 8
  br label %56

50:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %5, align 8
  store i8* %52, i8** %53, align 8
  br label %56

54:                                               ; preds = %3
  %55 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50, %46, %33, %30, %27, %24, %16, %12
  ret void
}

declare dso_local i32 @get_token(%struct.TYPE_5__*) #1

declare dso_local i32 @scan(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @unsigned_dec(i8**) #1

declare dso_local i32 @peekscan(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
