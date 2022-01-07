; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_kludge_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_kludge_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"8x8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keymap**, i32)* @kludge_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kludge_desc(%struct.keymap** %0, i32 %1) #0 {
  %3 = alloca %struct.keymap**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.keymap** %0, %struct.keymap*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %73, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %11
  %16 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.keymap*, %struct.keymap** %16, i64 %18
  %20 = load %struct.keymap*, %struct.keymap** %19, align 8
  %21 = getelementptr inbounds %struct.keymap, %struct.keymap* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %15
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i8* @realloc(i8* %35, i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %26
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 %50, i8* %55, align 1
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 48, i8* %64, align 1
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.keymap**, %struct.keymap*** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.keymap*, %struct.keymap** %66, i64 %68
  %70 = load %struct.keymap*, %struct.keymap** %69, align 8
  %71 = getelementptr inbounds %struct.keymap, %struct.keymap* %70, i32 0, i32 0
  store i8* %65, i8** %71, align 8
  br label %72

72:                                               ; preds = %59, %15
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %11

76:                                               ; preds = %11
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
