; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/contrib/extr_pccardq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slot_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%d~%s~%s~%s~%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i64 @proc_arg(i32 %14, i8** %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %81

19:                                               ; preds = %2
  %20 = call i32 @connect_to_pccardd(i8** %6)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %81

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @get_slot_number(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %81

28:                                               ; preds = %23
  %29 = load i32, i32* @slot_map, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %80

34:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, i32* @slot_map, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @get_slot_info(i32 %46, i32 %47, i8** %10, i8** %11, i8** %12, i32* %13)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %11, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54, %51
  br label %81

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i8* @strstate(i32 %66)
  %68 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %62, i8* %63, i8* %64, i8* %65, i8* %67)
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @free(i8* %73)
  br label %75

75:                                               ; preds = %61, %39
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %35

79:                                               ; preds = %35
  br label %80

80:                                               ; preds = %79, %31
  br label %81

81:                                               ; preds = %80, %60, %50, %27, %22, %18
  %82 = load i8*, i8** %6, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @unlink(i8* %85)
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @proc_arg(i32, i8**) #1

declare dso_local i32 @connect_to_pccardd(i8**) #1

declare dso_local i32 @get_slot_number(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @get_slot_info(i32, i32, i8**, i8**, i8**, i32*) #1

declare dso_local i8* @strstate(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
