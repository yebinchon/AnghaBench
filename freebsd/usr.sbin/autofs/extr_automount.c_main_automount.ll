; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_main_automount.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/autofs/extr_automount.c_main_automount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"D:Lfco:uv\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@AUTO_MASTER_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_automount(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = call i32 (...) @defined_init()
  br label %15

15:                                               ; preds = %41, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %39 [
    i32 68, label %22
    i32 76, label %25
    i32 99, label %28
    i32 102, label %29
    i32 111, label %30
    i32 117, label %34
    i32 118, label %35
    i32 63, label %38
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @defined_parse_and_add(i32 %23)
  br label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %41

28:                                               ; preds = %20
  store i32 1, i32* %13, align 4
  br label %41

29:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i8*, i8** %10, align 8
  %32 = load i32, i32* @optarg, align 4
  %33 = call i8* @concat(i8* %31, i8 signext 44, i32 %32)
  store i8* %33, i8** %10, align 8
  br label %41

34:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %41

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %20, %38
  %40 = call i32 (...) @usage_automount()
  br label %41

41:                                               ; preds = %39, %35, %34, %30, %29, %28, %25, %22
  br label %15

42:                                               ; preds = %15
  %43 = load i64, i64* @optind, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 (...) @usage_automount()
  br label %52

52:                                               ; preds = %50, %42
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 (...) @usage_automount()
  br label %60

60:                                               ; preds = %58, %55, %52
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @log_init(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @flush_caches()
  store i32 0, i32* %3, align 4
  br label %97

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @unmount_automounted(i32 %71)
  store i32 0, i32* %3, align 4
  br label %97

73:                                               ; preds = %67
  %74 = call %struct.node* (...) @node_new_root()
  store %struct.node* %74, %struct.node** %6, align 8
  %75 = load %struct.node*, %struct.node** %6, align 8
  %76 = load i32, i32* @AUTO_MASTER_PATH, align 4
  %77 = call i32 @parse_master(%struct.node* %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.node*, %struct.node** %6, align 8
  %85 = call i32 @node_expand_indirect_maps(%struct.node* %84)
  %86 = load %struct.node*, %struct.node** %6, align 8
  %87 = call i32 @node_expand_ampersand(%struct.node* %86, i32* null)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.node*, %struct.node** %6, align 8
  %90 = call i32 @node_expand_defined(%struct.node* %89)
  %91 = load %struct.node*, %struct.node** %6, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @node_print(%struct.node* %91, i8* %92)
  store i32 0, i32* %3, align 4
  br label %97

94:                                               ; preds = %73
  %95 = load %struct.node*, %struct.node** %6, align 8
  %96 = call i32 @mount_unmount(%struct.node* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %88, %70, %65
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @defined_init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @defined_parse_and_add(i32) #1

declare dso_local i8* @concat(i8*, i8 signext, i32) #1

declare dso_local i32 @usage_automount(...) #1

declare dso_local i32 @log_init(i32) #1

declare dso_local i32 @flush_caches(...) #1

declare dso_local i32 @unmount_automounted(i32) #1

declare dso_local %struct.node* @node_new_root(...) #1

declare dso_local i32 @parse_master(%struct.node*, i32) #1

declare dso_local i32 @node_expand_indirect_maps(%struct.node*) #1

declare dso_local i32 @node_expand_ampersand(%struct.node*, i32*) #1

declare dso_local i32 @node_expand_defined(%struct.node*) #1

declare dso_local i32 @node_print(%struct.node*, i8*) #1

declare dso_local i32 @mount_unmount(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
