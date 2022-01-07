; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_dump_regs_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_regs = type { i8*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid register block \22%s\22\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\0AAvailable blocks:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, %struct.mod_regs*, i32)* @dump_regs_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_regs_table(i32 %0, i8** %1, i32* %2, %struct.mod_regs* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mod_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.mod_regs* %3, %struct.mod_regs** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %75, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load i8**, i8*** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %30, i64 %32
  %34 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %29, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  br label %43

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %20

43:                                               ; preds = %38, %20
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i8**, i8*** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %65, %47
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %62 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  %68 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %69 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %68, i32 1
  store %struct.mod_regs* %69, %struct.mod_regs** %10, align 8
  br label %56

70:                                               ; preds = %56
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %6, align 4
  br label %128

74:                                               ; preds = %43
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %15

78:                                               ; preds = %15
  br label %79

79:                                               ; preds = %122, %78
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  store i32 %86, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %109, %82
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %112

96:                                               ; preds = %94
  %97 = load i8**, i8*** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %103 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %101, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %96
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %107, %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %87

112:                                              ; preds = %94
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %117 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @dump_block_regs(i32 %118, i32* %119)
  br label %121

121:                                              ; preds = %115, %112
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %11, align 4
  %125 = load %struct.mod_regs*, %struct.mod_regs** %10, align 8
  %126 = getelementptr inbounds %struct.mod_regs, %struct.mod_regs* %125, i32 1
  store %struct.mod_regs* %126, %struct.mod_regs** %10, align 8
  br label %79

127:                                              ; preds = %79
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %70
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_block_regs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
