; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_part_wizard.c_part_wizard.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsdinstall/partedit/extr_part_wizard.c_part_wizard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ufs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @part_wizard(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gmesh, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %6, align 8
  br label %14

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %11
  br label %15

15:                                               ; preds = %43, %14
  %16 = call i32 @geom_gettree(%struct.gmesh* %7)
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @dlg_put_backtitle()
  %18 = call i32 @geom_gettree(%struct.gmesh* %7)
  store i32 %18, i32* %8, align 4
  %19 = call i8* @boot_disk(%struct.gmesh* %7)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %48

23:                                               ; preds = %15
  %24 = call i32 (...) @dlg_clear()
  %25 = call i32 (...) @dlg_put_backtitle()
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @wizard_partition(%struct.gmesh* %7, i8* %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %48

33:                                               ; preds = %23
  %34 = call i32 @geom_deletetree(%struct.gmesh* %7)
  %35 = call i32 (...) @dlg_clear()
  %36 = call i32 (...) @dlg_put_backtitle()
  %37 = call i32 @geom_gettree(%struct.gmesh* %7)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @wizard_makeparts(%struct.gmesh* %7, i8* %38, i8* %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %15

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @free(i8* %45)
  %47 = call i32 @geom_deletetree(%struct.gmesh* %7)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %32, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @geom_gettree(%struct.gmesh*) #1

declare dso_local i32 @dlg_put_backtitle(...) #1

declare dso_local i8* @boot_disk(%struct.gmesh*) #1

declare dso_local i32 @dlg_clear(...) #1

declare dso_local i8* @wizard_partition(%struct.gmesh*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @geom_deletetree(%struct.gmesh*) #1

declare dso_local i32 @wizard_makeparts(%struct.gmesh*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
