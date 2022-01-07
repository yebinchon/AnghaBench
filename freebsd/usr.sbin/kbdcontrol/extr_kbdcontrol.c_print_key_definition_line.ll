; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_key_definition_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_key_definition_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyent_t = type { i32, i32*, i32 }

@hex = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c" 0x%02x  \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"  %03d  \00", align 1
@NUM_STATES = common dso_local global i32 0, align 4
@SPECIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"  O\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"  C\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"  N\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"  B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.keyent_t*)* @print_key_definition_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_key_definition_line(i32* %0, i32 %1, %struct.keyent_t* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.keyent_t*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.keyent_t* %2, %struct.keyent_t** %6, align 8
  %8 = load i64, i64* @hex, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @NUM_STATES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %25 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 128, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %34 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SPECIAL, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @print_entry(i32* %32, i32 %41)
  br label %53

43:                                               ; preds = %23
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %46 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @print_entry(i32* %44, i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.keyent_t*, %struct.keyent_t** %6, align 8
  %59 = getelementptr inbounds %struct.keyent_t, %struct.keyent_t* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %73 [
    i32 0, label %61
    i32 1, label %64
    i32 2, label %67
    i32 3, label %70
  ]

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %73

64:                                               ; preds = %57
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %73

67:                                               ; preds = %57
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %73

70:                                               ; preds = %57
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %57, %70, %67, %64, %61
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_entry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
