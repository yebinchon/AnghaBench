; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_aldap_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aldap = type { i32, i8*, i32 }
%struct.aldap_page_control = type { i32 }
%struct.ber_element = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"d{t\00", align 1
@BER_CLASS_APP = common dso_local global i32 0, align 4
@LDAP_REQ_SEARCH = common dso_local global i64 0, align 8
@ALDAP_ERR_OPERATION_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"sEEddb\00", align 1
@LDAP_DEREF_NEVER = common dso_local global i64 0, align 8
@ALDAP_ERR_PARSER_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"aldap_search\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aldap_search(%struct.aldap* %0, i8* %1, i32 %2, i8* %3, i8** %4, i32 %5, i32 %6, i32 %7, %struct.aldap_page_control* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.aldap*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.aldap_page_control*, align 8
  %20 = alloca %struct.ber_element*, align 8
  %21 = alloca %struct.ber_element*, align 8
  %22 = alloca %struct.ber_element*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.aldap* %0, %struct.aldap** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8** %4, i8*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.aldap_page_control* %8, %struct.aldap_page_control** %19, align 8
  store %struct.ber_element* null, %struct.ber_element** %20, align 8
  %25 = call %struct.ber_element* @ber_add_sequence(%struct.ber_element* null)
  store %struct.ber_element* %25, %struct.ber_element** %20, align 8
  %26 = icmp eq %struct.ber_element* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  br label %122

28:                                               ; preds = %9
  %29 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %30 = load %struct.aldap*, %struct.aldap** %11, align 8
  %31 = getelementptr inbounds %struct.aldap, %struct.aldap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @BER_CLASS_APP, align 4
  %35 = load i64, i64* @LDAP_REQ_SEARCH, align 8
  %36 = call %struct.ber_element* (%struct.ber_element*, i8*, ...) @ber_printf_elements(%struct.ber_element* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i64 %35)
  store %struct.ber_element* %36, %struct.ber_element** %21, align 8
  %37 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %38 = icmp eq %struct.ber_element* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i8*, i8** @ALDAP_ERR_OPERATION_FAILED, align 8
  %41 = load %struct.aldap*, %struct.aldap** %11, align 8
  %42 = getelementptr inbounds %struct.aldap, %struct.aldap* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %122

43:                                               ; preds = %28
  %44 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  store %struct.ber_element* %44, %struct.ber_element** %22, align 8
  %45 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @LDAP_DEREF_NEVER, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call %struct.ber_element* (%struct.ber_element*, i8*, ...) @ber_printf_elements(%struct.ber_element* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %46, i64 %48, i64 %49, i32 %50, i32 %51, i32 %52)
  store %struct.ber_element* %53, %struct.ber_element** %21, align 8
  %54 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %55 = icmp eq %struct.ber_element* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i8*, i8** @ALDAP_ERR_OPERATION_FAILED, align 8
  %58 = load %struct.aldap*, %struct.aldap** %11, align 8
  %59 = getelementptr inbounds %struct.aldap, %struct.aldap* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %122

60:                                               ; preds = %43
  %61 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call %struct.ber_element* @ldap_parse_search_filter(%struct.ber_element* %61, i8* %62)
  store %struct.ber_element* %63, %struct.ber_element** %21, align 8
  %64 = icmp eq %struct.ber_element* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** @ALDAP_ERR_PARSER_ERROR, align 8
  %67 = load %struct.aldap*, %struct.aldap** %11, align 8
  %68 = getelementptr inbounds %struct.aldap, %struct.aldap* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %122

69:                                               ; preds = %60
  %70 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %71 = call %struct.ber_element* @ber_add_sequence(%struct.ber_element* %70)
  store %struct.ber_element* %71, %struct.ber_element** %21, align 8
  %72 = icmp eq %struct.ber_element* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %122

74:                                               ; preds = %69
  %75 = load i8**, i8*** %15, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  store i32 0, i32* %23, align 4
  br label %78

78:                                               ; preds = %96, %77
  %79 = load i8**, i8*** %15, align 8
  %80 = load i32, i32* %23, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.ber_element*, %struct.ber_element** %21, align 8
  %87 = load i8**, i8*** %15, align 8
  %88 = load i32, i32* %23, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call %struct.ber_element* @ber_add_string(%struct.ber_element* %86, i8* %91)
  store %struct.ber_element* %92, %struct.ber_element** %21, align 8
  %93 = icmp eq %struct.ber_element* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %122

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %23, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %23, align 4
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %74
  %101 = load %struct.ber_element*, %struct.ber_element** %22, align 8
  %102 = load %struct.aldap_page_control*, %struct.aldap_page_control** %19, align 8
  %103 = call i32 @aldap_create_page_control(%struct.ber_element* %101, i32 100, %struct.aldap_page_control* %102)
  %104 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %105 = call i32 @LDAP_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.ber_element* %104)
  %106 = load %struct.aldap*, %struct.aldap** %11, align 8
  %107 = getelementptr inbounds %struct.aldap, %struct.aldap* %106, i32 0, i32 2
  %108 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %109 = call i32 @ber_write_elements(i32* %107, %struct.ber_element* %108)
  store i32 %109, i32* %24, align 4
  %110 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %111 = call i32 @ber_free_elements(%struct.ber_element* %110)
  store %struct.ber_element* null, %struct.ber_element** %20, align 8
  %112 = load i32, i32* %24, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i8*, i8** @ALDAP_ERR_OPERATION_FAILED, align 8
  %116 = load %struct.aldap*, %struct.aldap** %11, align 8
  %117 = getelementptr inbounds %struct.aldap, %struct.aldap* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  br label %122

118:                                              ; preds = %100
  %119 = load %struct.aldap*, %struct.aldap** %11, align 8
  %120 = getelementptr inbounds %struct.aldap, %struct.aldap* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %10, align 4
  br label %129

122:                                              ; preds = %114, %94, %73, %65, %56, %39, %27
  %123 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %124 = icmp ne %struct.ber_element* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.ber_element*, %struct.ber_element** %20, align 8
  %127 = call i32 @ber_free_elements(%struct.ber_element* %126)
  br label %128

128:                                              ; preds = %125, %122
  store i32 -1, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local %struct.ber_element* @ber_add_sequence(%struct.ber_element*) #1

declare dso_local %struct.ber_element* @ber_printf_elements(%struct.ber_element*, i8*, ...) #1

declare dso_local %struct.ber_element* @ldap_parse_search_filter(%struct.ber_element*, i8*) #1

declare dso_local %struct.ber_element* @ber_add_string(%struct.ber_element*, i8*) #1

declare dso_local i32 @aldap_create_page_control(%struct.ber_element*, i32, %struct.aldap_page_control*) #1

declare dso_local i32 @LDAP_DEBUG(i8*, %struct.ber_element*) #1

declare dso_local i32 @ber_write_elements(i32*, %struct.ber_element*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
