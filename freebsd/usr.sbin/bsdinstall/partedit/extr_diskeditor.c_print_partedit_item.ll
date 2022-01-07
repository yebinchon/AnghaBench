; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_diskeditor.c_print_partedit_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_diskeditor.c_print_partedit_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partedit_item = type { i32, i8*, i8*, i8*, i32 }

@A_NORMAL = common dso_local global i32 0, align 4
@item_selected_attr = common dso_local global i32 0, align 4
@item_attr = common dso_local global i32 0, align 4
@MARGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.partedit_item*, i32, i32, i32)* @print_partedit_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_partedit_item(i32* %0, %struct.partedit_item* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.partedit_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.partedit_item* %1, %struct.partedit_item** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @A_NORMAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @item_selected_attr, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @item_attr, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = call i32 @wattrset(i32* %19, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MARGIN, align 4
  %32 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %32, i64 %34
  %36 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %31, %38
  %40 = call i32 @wmove(i32* %29, i32 %30, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %42, i64 %44
  %46 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @dlg_print_text(i32* %41, i8* %47, i32 10, i32* %11)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @wmove(i32* %49, i32 %50, i32 17)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @item_attr, align 4
  %54 = call i32 @wattrset(i32* %52, i32 %53)
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %56 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %56, i64 %58
  %60 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HN_AUTOSCALE, align 4
  %63 = load i32, i32* @HN_DECIMAL, align 4
  %64 = call i32 @humanize_number(i8* %55, i32 7, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %67 = call i32 @dlg_print_text(i32* %65, i8* %66, i32 8, i32* %11)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @wmove(i32* %68, i32 %69, i32 25)
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %72, i64 %74
  %76 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @dlg_print_text(i32* %71, i8* %77, i32 15, i32* %11)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @wmove(i32* %79, i32 %80, i32 40)
  %82 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %82, i64 %84
  %86 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %26
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.partedit_item*, %struct.partedit_item** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %91, i64 %93
  %95 = getelementptr inbounds %struct.partedit_item, %struct.partedit_item* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @dlg_print_text(i32* %90, i8* %96, i32 8, i32* %11)
  br label %98

98:                                               ; preds = %89, %26
  ret void
}

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @dlg_print_text(i32*, i8*, i32, i32*) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
