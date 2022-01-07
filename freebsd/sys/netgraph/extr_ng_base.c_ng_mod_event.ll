; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_mod_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_mod_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_type = type { i32 (i32, i32, i8*)*, i32 }

@types = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_mod_event(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ng_type*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ng_type*
  store %struct.ng_type* %10, %struct.ng_type** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %80 [
    i32 129, label %12
    i32 128, label %43
  ]

12:                                               ; preds = %3
  %13 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %14 = call i32 @ng_newtype(%struct.ng_type* %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %96

17:                                               ; preds = %12
  %18 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %19 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %19, align 8
  %21 = icmp ne i32 (i32, i32, i8*)* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %24 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %23, i32 0, i32 0
  %25 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 %25(i32 %26, i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = call i32 (...) @TYPELIST_WLOCK()
  %33 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %34 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %38 = load i32, i32* @types, align 4
  %39 = call i32 @LIST_REMOVE(%struct.ng_type* %37, i32 %38)
  %40 = call i32 (...) @TYPELIST_WUNLOCK()
  br label %41

41:                                               ; preds = %31, %22
  br label %42

42:                                               ; preds = %41, %17
  br label %96

43:                                               ; preds = %3
  %44 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %45 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EBUSY, align 4
  store i32 %49, i32* %8, align 4
  br label %79

50:                                               ; preds = %43
  %51 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %52 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %96

56:                                               ; preds = %50
  %57 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %58 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %58, align 8
  %60 = icmp ne i32 (i32, i32, i8*)* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %63 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %62, i32 0, i32 0
  %64 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 %64(i32 %65, i32 %66, i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %96

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %56
  %74 = call i32 (...) @TYPELIST_WLOCK()
  %75 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %76 = load i32, i32* @types, align 4
  %77 = call i32 @LIST_REMOVE(%struct.ng_type* %75, i32 %76)
  %78 = call i32 (...) @TYPELIST_WUNLOCK()
  br label %79

79:                                               ; preds = %73, %48
  br label %96

80:                                               ; preds = %3
  %81 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %82 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %81, i32 0, i32 0
  %83 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %82, align 8
  %84 = icmp ne i32 (i32, i32, i8*)* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.ng_type*, %struct.ng_type** %7, align 8
  %87 = getelementptr inbounds %struct.ng_type, %struct.ng_type* %86, i32 0, i32 0
  %88 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 %88(i32 %89, i32 %90, i8* %91)
  store i32 %92, i32* %8, align 4
  br label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %93, %85
  br label %96

96:                                               ; preds = %95, %79, %71, %55, %42, %16
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i32 @ng_newtype(%struct.ng_type*) #1

declare dso_local i32 @TYPELIST_WLOCK(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.ng_type*, i32) #1

declare dso_local i32 @TYPELIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
