; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_get_remote_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_get_remote_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i64, i32 }
%struct.ref = type { i32 }
%struct.argv_array = type { i32, i32* }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ls-refs\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"command=ls-refs\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"agent\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"agent=%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"server-option\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"server-option=%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"peel\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"symrefs\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ref-prefix %s\0A\00", align 1
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"invalid ls-refs response: %s\00", align 1
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"expected flush after ref listing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref** @get_remote_refs(i32 %0, %struct.packet_reader* %1, %struct.ref** %2, i32 %3, %struct.argv_array* %4, %struct.string_list* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.packet_reader*, align 8
  %9 = alloca %struct.ref**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.argv_array*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.packet_reader* %1, %struct.packet_reader** %8, align 8
  store %struct.ref** %2, %struct.ref*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.argv_array* %4, %struct.argv_array** %11, align 8
  store %struct.string_list* %5, %struct.string_list** %12, align 8
  %14 = load %struct.ref**, %struct.ref*** %9, align 8
  store %struct.ref* null, %struct.ref** %14, align 8
  %15 = call i64 @server_supports_v2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %6
  %21 = call i64 @server_supports_v2(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (...) @git_user_agent_sanitized()
  %26 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.string_list*, %struct.string_list** %12, align 8
  %29 = icmp ne %struct.string_list* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load %struct.string_list*, %struct.string_list** %12, align 8
  %32 = getelementptr inbounds %struct.string_list, %struct.string_list* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = call i64 @server_supports_v2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.string_list*, %struct.string_list** %12, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.string_list*, %struct.string_list** %12, align 8
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %35, %30, %27
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @packet_delim(i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %92, %68
  %72 = load %struct.argv_array*, %struct.argv_array** %11, align 8
  %73 = icmp ne %struct.argv_array* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.argv_array*, %struct.argv_array** %11, align 8
  %77 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i1 [ false, %71 ], [ %79, %74 ]
  br i1 %81, label %82, label %95

82:                                               ; preds = %80
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.argv_array*, %struct.argv_array** %11, align 8
  %85 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @packet_write_fmt(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %71

95:                                               ; preds = %80
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @packet_flush(i32 %96)
  br label %98

98:                                               ; preds = %115, %95
  %99 = load %struct.packet_reader*, %struct.packet_reader** %8, align 8
  %100 = call i64 @packet_reader_read(%struct.packet_reader* %99)
  %101 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load %struct.packet_reader*, %struct.packet_reader** %8, align 8
  %105 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @process_ref_v2(i32 %106, %struct.ref*** %9)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %111 = load %struct.packet_reader*, %struct.packet_reader** %8, align 8
  %112 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32, ...) @die(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %109, %103
  br label %98

116:                                              ; preds = %98
  %117 = load %struct.packet_reader*, %struct.packet_reader** %8, align 8
  %118 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %124 = call i32 (i32, ...) @die(i32 %123)
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.ref**, %struct.ref*** %9, align 8
  ret %struct.ref** %126
}

declare dso_local i64 @server_supports_v2(i8*, i32) #1

declare dso_local i32 @packet_write_fmt(i32, i8*, ...) #1

declare dso_local i32 @git_user_agent_sanitized(...) #1

declare dso_local i32 @packet_delim(i32) #1

declare dso_local i32 @packet_flush(i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @process_ref_v2(i32, %struct.ref***) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
