; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_lookup_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_lookup_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"set_\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8***, i8***, i32*)* @link_elf_lookup_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_elf_lookup_set(i32 %0, i8* %1, i8*** %2, i8*** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i8***, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8*** %2, i8**** %9, align 8
  store i8*** %3, i8**** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %12, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %106, %5
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %109

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @strncmp(i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcmp(i64 %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %37
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8**
  store i8** %59, i8*** %13, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %68, i64 %77
  %79 = bitcast i8* %78 to i8**
  store i8** %79, i8*** %14, align 8
  %80 = load i8**, i8*** %14, align 8
  %81 = load i8**, i8*** %13, align 8
  %82 = ptrtoint i8** %80 to i64
  %83 = ptrtoint i8** %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load i8***, i8**** %9, align 8
  %88 = icmp ne i8*** %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %50
  %90 = load i8**, i8*** %13, align 8
  %91 = load i8***, i8**** %9, align 8
  store i8** %90, i8*** %91, align 8
  br label %92

92:                                               ; preds = %89, %50
  %93 = load i8***, i8**** %10, align 8
  %94 = icmp ne i8*** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8**, i8*** %14, align 8
  %97 = load i8***, i8**** %10, align 8
  store i8** %96, i8*** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %11, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  store i32 0, i32* %6, align 4
  br label %111

105:                                              ; preds = %37, %26
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %15, align 4
  br label %20

109:                                              ; preds = %20
  %110 = load i32, i32* @ESRCH, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
