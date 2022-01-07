; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8* }

@IBE_MAGIC_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IBE_NAME_MAX = common dso_local global i32 0, align 4
@IBE_INTERP_LEN_MAX = common dso_local global i32 0, align 4
@interp_list_sx = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@interpreter_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@interp_list_entry_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @imgact_binmisc_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgact_binmisc_add_entry(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IBE_MAGIC_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %113

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %36, %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IBE_NAME_MAX, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 @isascii(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %2, align 4
  br label %113

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %18

41:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %63, %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IBE_INTERP_LEN_MAX, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @isascii(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %2, align 4
  br label %113

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %68, %93
  %73 = load i8*, i8** %5, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 35)
  store i8* %74, i8** %5, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %94

78:                                               ; preds = %72
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %91 [
    i32 128, label %84
    i32 129, label %87
    i32 0, label %90
  ]

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  br label %93

87:                                               ; preds = %78
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %93

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %78, %90
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %2, align 4
  br label %113

93:                                               ; preds = %87, %84
  br label %72

94:                                               ; preds = %77
  %95 = call i32 @sx_xlock(i32* @interp_list_sx)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32* @imgact_binmisc_find_entry(i8* %98)
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = call i32 @sx_xunlock(i32* @interp_list_sx)
  %103 = load i32, i32* @EEXIST, align 4
  store i32 %103, i32* %2, align 4
  br label %113

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = call i32* @imgact_binmisc_new_entry(%struct.TYPE_4__* %105)
  store i32* %106, i32** %4, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @link, align 4
  %109 = call i32 @SLIST_INSERT_HEAD(i32* @interpreter_list, i32* %107, i32 %108)
  %110 = load i32, i32* @interp_list_entry_count, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @interp_list_entry_count, align 4
  %112 = call i32 @sx_xunlock(i32* @interp_list_sx)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %104, %101, %91, %60, %33, %12
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @isascii(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32* @imgact_binmisc_find_entry(i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32* @imgact_binmisc_new_entry(%struct.TYPE_4__*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
