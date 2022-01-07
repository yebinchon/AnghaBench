; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_mem_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_printcis.c_print_mem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"\09Memory space length = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\09Memory space address = 0x%x, length = 0x%x\0A\00", align 1
@CIS_MEM_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Memory descriptor %d\0A\09\09\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" blk length = 0x%x00\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" card addr = 0x%x00\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c" host addr = 0x%x00\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\09Wrong length for memory mapping sub-tuple\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*)* @print_mem_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_mem_map(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CIS_FEAT_MEMORY(i32 %11)
  switch i32 %12, label %126 [
    i32 129, label %13
    i32 130, label %14
    i32 131, label %29
    i32 128, label %47
  ]

13:                                               ; preds = %3
  br label %126

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %128

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @tpl16(i32* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %6, align 8
  br label %126

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = icmp slt i64 %35, 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %128

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = call i32 @tpl16(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @tpl16(i32* %42)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32* %46, i32** %6, align 8
  br label %126

47:                                               ; preds = %3
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ule i32* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %128

52:                                               ; preds = %47
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @CIS_MEM_LENSZ(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @CIS_MEM_ADDRSZ(i32 %58)
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @CIS_MEM_HOST, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @CIS_MEM_ADDRSZ(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %65, %52
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %122, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @CIS_MEM_WINS(i32 %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = ptrtoint i32* %77 to i64
  %80 = ptrtoint i32* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %128

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @CIS_MEM_LENSZ(i32 %91)
  %93 = or i32 %92, 16
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @print_num(i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %94, i32 0)
  %96 = load i32*, i32** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @CIS_MEM_ADDRSZ(i32 %99)
  %101 = or i32 %100, 16
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @print_num(i32 %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %102, i32 0)
  %104 = load i32*, i32** %6, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @CIS_MEM_HOST, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %87
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @CIS_MEM_ADDRSZ(i32 %112)
  %114 = or i32 %113, 16
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @print_num(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %115, i32 0)
  %117 = load i32*, i32** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %111, %87
  %121 = call i32 @putchar(i8 signext 10)
  br label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %71

125:                                              ; preds = %71
  br label %126

126:                                              ; preds = %3, %125, %38, %23, %13
  %127 = load i32*, i32** %6, align 8
  store i32* %127, i32** %4, align 8
  br label %131

128:                                              ; preds = %86, %51, %37, %22
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32*, i32** %6, align 8
  store i32* %130, i32** %4, align 8
  br label %131

131:                                              ; preds = %128, %126
  %132 = load i32*, i32** %4, align 8
  ret i32* %132
}

declare dso_local i32 @CIS_FEAT_MEMORY(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @tpl16(i32*) #1

declare dso_local i32 @CIS_MEM_LENSZ(i32) #1

declare dso_local i32 @CIS_MEM_ADDRSZ(i32) #1

declare dso_local i32 @CIS_MEM_WINS(i32) #1

declare dso_local i32 @print_num(i32, i8*, i32*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
