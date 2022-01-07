; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_parse_manifest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_parse_manifest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"mac_veriexec_parser: Warning: Failed to parse entry with rc:%d, entry:\22%s\22\0A\00", align 1
@M_VERIEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_manifest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @read_manifest(i8* %12, i8* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %10, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %8, align 8
  br label %21

21:                                               ; preds = %59, %45, %19
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 10)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i8*, i8** %9, align 8
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %33
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %8, align 8
  br label %21

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @parse_entry(i8* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  br label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** %9, align 8
  store i8* %60, i8** %8, align 8
  br label %21

61:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %17
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @M_VERIEXEC, align 4
  %68 = call i32 @free(i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i8* @read_manifest(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_entry(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
