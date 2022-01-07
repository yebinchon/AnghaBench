; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_get_stringset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_get_stringset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i64, %struct.ber_element* }

@BER_TYPE_OCTETSTRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @aldap_get_stringset(%struct.ber_element* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.ber_element* %0, %struct.ber_element** %3, align 8
  %8 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  %9 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BER_TYPE_OCTETSTRING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  store %struct.ber_element* %15, %struct.ber_element** %4, align 8
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %14
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %21 = icmp ne %struct.ber_element* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %24 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BER_TYPE_OCTETSTRING, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %19, %16
  %29 = phi i1 [ false, %19 ], [ false, %16 ], [ %27, %22 ]
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %33 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %32, i32 0, i32 1
  %34 = load %struct.ber_element*, %struct.ber_element** %33, align 8
  store %struct.ber_element* %34, %struct.ber_element** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8** null, i8*** %2, align 8
  br label %95

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8** @calloc(i32 %43, i32 8)
  store i8** %44, i8*** %6, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8** null, i8*** %2, align 8
  br label %95

47:                                               ; preds = %41
  %48 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  store %struct.ber_element* %48, %struct.ber_element** %4, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %79, %47
  %50 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %51 = icmp ne %struct.ber_element* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %54 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BER_TYPE_OCTETSTRING, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %52, %49
  %59 = phi i1 [ false, %49 ], [ %57, %52 ]
  br i1 %59, label %60, label %83

60:                                               ; preds = %58
  %61 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %62 = call i32 @ber_get_string(%struct.ber_element* %61, i8** %7)
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @utoa(i8* %63)
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %64, i8** %68, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %60
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %81 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %80, i32 0, i32 1
  %82 = load %struct.ber_element*, %struct.ber_element** %81, align 8
  store %struct.ber_element* %82, %struct.ber_element** %4, align 8
  br label %49

83:                                               ; preds = %58
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8**, i8*** %6, align 8
  %88 = call i32 @free(i8** %87)
  store i8** null, i8*** %2, align 8
  br label %95

89:                                               ; preds = %83
  %90 = load i8**, i8*** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* null, i8** %93, align 8
  %94 = load i8**, i8*** %6, align 8
  store i8** %94, i8*** %2, align 8
  br label %95

95:                                               ; preds = %89, %86, %46, %40, %13
  %96 = load i8**, i8*** %2, align 8
  ret i8** %96
}

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @ber_get_string(%struct.ber_element*, i8**) #1

declare dso_local i8* @utoa(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
