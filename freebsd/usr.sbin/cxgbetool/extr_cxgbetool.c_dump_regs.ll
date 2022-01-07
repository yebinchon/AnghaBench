; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_regdump = type { i32, i32*, i32 }

@T4_REGDUMP_SIZE = common dso_local global i32 0, align 4
@T5_REGDUMP_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@CHELSIO_T4_REGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s (type %d, rev %d) is not a known card.\00", align 1
@nexus = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_regs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t4_regdump, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @T4_REGDUMP_SIZE, align 4
  %12 = load i32, i32* @T5_REGDUMP_SIZE, align 4
  %13 = call i32 @max(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32* @calloc(i32 1, i32 %14)
  %16 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @warnc(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %110

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* @CHELSIO_T4_REGDUMP, align 4
  %28 = call i32 @doit(i32 %27, %struct.t4_regdump* %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_card_vers(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 10
  %40 = and i32 %39, 63
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 63
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @dump_regs_t4vf(i32 %47, i8** %48, i32* %50)
  store i32 %51, i32* %8, align 4
  br label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dump_regs_t4(i32 %53, i8** %54, i32* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %105

59:                                               ; preds = %33
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 63
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @dump_regs_t5vf(i32 %66, i8** %67, i32* %69)
  store i32 %70, i32* %8, align 4
  br label %77

71:                                               ; preds = %62
  %72 = load i32, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @dump_regs_t5(i32 %72, i8** %73, i32* %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %104

78:                                               ; preds = %59
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 6
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 63
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @dump_regs_t6vf(i32 %85, i8** %86, i32* %88)
  store i32 %89, i32* %8, align 4
  br label %96

90:                                               ; preds = %81
  %91 = load i32, i32* %4, align 4
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @dump_regs_t6(i32 %91, i8** %92, i32* %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %84
  br label %103

97:                                               ; preds = %78
  %98 = load i32, i32* @nexus, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* @ENOTSUP, align 4
  store i32 %102, i32* %3, align 4
  br label %110

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %58
  %106 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %9, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %97, %31, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @warnc(i32, i8*) #1

declare dso_local i32 @doit(i32, %struct.t4_regdump*) #1

declare dso_local i32 @get_card_vers(i32) #1

declare dso_local i32 @dump_regs_t4vf(i32, i8**, i32*) #1

declare dso_local i32 @dump_regs_t4(i32, i8**, i32*) #1

declare dso_local i32 @dump_regs_t5vf(i32, i8**, i32*) #1

declare dso_local i32 @dump_regs_t5(i32, i8**, i32*) #1

declare dso_local i32 @dump_regs_t6vf(i32, i8**, i32*) #1

declare dso_local i32 @dump_regs_t6(i32, i8**, i32*) #1

declare dso_local i32 @warnx(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
