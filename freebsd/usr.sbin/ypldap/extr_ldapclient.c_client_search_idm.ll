; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_search_idm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ldapclient.c_client_search_idm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env = type { i32 }
%struct.idm = type { i8*, i8* }
%struct.aldap = type { i64 }
%struct.idm_req = type { i32 }
%struct.aldap_message = type { i64, i64, %struct.aldap_page_control* }
%struct.aldap_page_control = type { i64 }

@IMSG_GRP_ENTRY = common dso_local global i32 0, align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LDAP_RES_SEARCH_RESULT = common dso_local global i64 0, align 8
@LDAP_RES_SEARCH_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @client_search_idm(%struct.env* %0, %struct.idm* %1, %struct.aldap* %2, i8** %3, i8* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.env*, align 8
  %11 = alloca %struct.idm*, align 8
  %12 = alloca %struct.aldap*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.idm_req, align 4
  %19 = alloca %struct.aldap_message*, align 8
  %20 = alloca %struct.aldap_page_control*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.env* %0, %struct.env** %10, align 8
  store %struct.idm* %1, %struct.idm** %11, align 8
  store %struct.aldap* %2, %struct.aldap** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.aldap_page_control* null, %struct.aldap_page_control** %20, align 8
  %23 = load %struct.idm*, %struct.idm** %11, align 8
  %24 = getelementptr inbounds %struct.idm, %struct.idm* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %22, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @IMSG_GRP_ENTRY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %8
  %30 = load %struct.idm*, %struct.idm** %11, align 8
  %31 = getelementptr inbounds %struct.idm, %struct.idm* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.idm*, %struct.idm** %11, align 8
  %39 = getelementptr inbounds %struct.idm, %struct.idm* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %22, align 8
  br label %41

41:                                               ; preds = %37, %29, %8
  br label %42

42:                                               ; preds = %126, %41
  %43 = load %struct.aldap*, %struct.aldap** %12, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %46 = load i8*, i8** %14, align 8
  %47 = load i8**, i8*** %13, align 8
  %48 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %49 = call i32 @aldap_search(%struct.aldap* %43, i8* %44, i32 %45, i8* %46, i8** %47, i32 0, i32 0, i32 0, %struct.aldap_page_control* %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.aldap*, %struct.aldap** %12, align 8
  %53 = call i32 @aldap_get_errno(%struct.aldap* %52, i8** %21)
  %54 = load i8*, i8** %21, align 8
  %55 = call i32 @log_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %54)
  store i32 -1, i32* %9, align 4
  br label %139

56:                                               ; preds = %42
  %57 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %58 = icmp ne %struct.aldap_page_control* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %61 = call i32 @aldap_freepage(%struct.aldap_page_control* %60)
  store %struct.aldap_page_control* null, %struct.aldap_page_control** %20, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %122, %62
  %64 = load %struct.aldap*, %struct.aldap** %12, align 8
  %65 = call %struct.aldap_message* @aldap_parse(%struct.aldap* %64)
  store %struct.aldap_message* %65, %struct.aldap_message** %19, align 8
  %66 = icmp ne %struct.aldap_message* %65, null
  br i1 %66, label %67, label %125

67:                                               ; preds = %63
  %68 = load %struct.aldap*, %struct.aldap** %12, align 8
  %69 = getelementptr inbounds %struct.aldap, %struct.aldap* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %72 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %130

76:                                               ; preds = %67
  %77 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %78 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LDAP_RES_SEARCH_RESULT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %84 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %83, i32 0, i32 2
  %85 = load %struct.aldap_page_control*, %struct.aldap_page_control** %84, align 8
  %86 = icmp ne %struct.aldap_page_control* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %89 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %88, i32 0, i32 2
  %90 = load %struct.aldap_page_control*, %struct.aldap_page_control** %89, align 8
  %91 = getelementptr inbounds %struct.aldap_page_control, %struct.aldap_page_control* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %96 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %95, i32 0, i32 2
  %97 = load %struct.aldap_page_control*, %struct.aldap_page_control** %96, align 8
  store %struct.aldap_page_control* %97, %struct.aldap_page_control** %20, align 8
  br label %99

98:                                               ; preds = %87, %82
  store %struct.aldap_page_control* null, %struct.aldap_page_control** %20, align 8
  br label %99

99:                                               ; preds = %98, %94
  %100 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %101 = call i32 @aldap_freemsg(%struct.aldap_message* %100)
  br label %125

102:                                              ; preds = %76
  %103 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %104 = getelementptr inbounds %struct.aldap_message, %struct.aldap_message* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LDAP_RES_SEARCH_ENTRY, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %130

109:                                              ; preds = %102
  %110 = load %struct.idm*, %struct.idm** %11, align 8
  %111 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i64 @client_build_req(%struct.idm* %110, %struct.idm_req* %18, %struct.aldap_message* %111, i32 %112, i32 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.env*, %struct.env** %10, align 8
  %118 = getelementptr inbounds %struct.env, %struct.env* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @imsg_compose_event(i32 %119, i32 %120, i32 0, i32 0, i32 -1, %struct.idm_req* %18, i32 4)
  br label %122

122:                                              ; preds = %116, %109
  %123 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %124 = call i32 @aldap_freemsg(%struct.aldap_message* %123)
  br label %63

125:                                              ; preds = %99, %63
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %128 = icmp ne %struct.aldap_page_control* %127, null
  br i1 %128, label %42, label %129

129:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  br label %139

130:                                              ; preds = %108, %75
  %131 = load %struct.aldap_message*, %struct.aldap_message** %19, align 8
  %132 = call i32 @aldap_freemsg(%struct.aldap_message* %131)
  %133 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %134 = icmp ne %struct.aldap_page_control* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.aldap_page_control*, %struct.aldap_page_control** %20, align 8
  %137 = call i32 @aldap_freepage(%struct.aldap_page_control* %136)
  br label %138

138:                                              ; preds = %135, %130
  store i32 -1, i32* %9, align 4
  br label %139

139:                                              ; preds = %138, %129, %51
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @aldap_search(%struct.aldap*, i8*, i32, i8*, i8**, i32, i32, i32, %struct.aldap_page_control*) #1

declare dso_local i32 @aldap_get_errno(%struct.aldap*, i8**) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @aldap_freepage(%struct.aldap_page_control*) #1

declare dso_local %struct.aldap_message* @aldap_parse(%struct.aldap*) #1

declare dso_local i32 @aldap_freemsg(%struct.aldap_message*) #1

declare dso_local i64 @client_build_req(%struct.idm*, %struct.idm_req*, %struct.aldap_message*, i32, i32) #1

declare dso_local i32 @imsg_compose_event(i32, i32, i32, i32, i32, %struct.idm_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
