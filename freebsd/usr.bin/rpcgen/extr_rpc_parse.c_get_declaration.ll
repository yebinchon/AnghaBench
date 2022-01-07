; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_declaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_parse.c_get_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i64, i8* }

@REL_ALIAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"void\00", align 1
@TOK_STAR = common dso_local global i64 0, align 8
@TOK_IDENT = common dso_local global i32 0, align 4
@REL_POINTER = common dso_local global i64 0, align 8
@TOK_LBRACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"no array-of-pointer declarations -- use typedef\00", align 1
@REL_VECTOR = common dso_local global i64 0, align 8
@TOK_RBRACKET = common dso_local global i32 0, align 4
@TOK_LANGLE = common dso_local global i32 0, align 4
@REL_ARRAY = common dso_local global i64 0, align 8
@TOK_RANGLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"~0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"array declaration expected\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"variable-length array declaration expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @get_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_declaration(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_type(i32* %7, i32* %9, i32 %10)
  %12 = load i64, i64* @REL_ALIAS, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @streq(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %135

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @check_type_name(i32 %24, i32 0)
  %26 = load i64, i64* @TOK_STAR, align 8
  %27 = load i32, i32* @TOK_IDENT, align 4
  %28 = call i32 @scan2(i64 %26, i32 %27, %struct.TYPE_8__* %5)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TOK_STAR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i64, i64* @REL_POINTER, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @TOK_IDENT, align 4
  %38 = call i32 @scan(i32 %37, %struct.TYPE_8__* %5)
  br label %39

39:                                               ; preds = %33, %21
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @TOK_LBRACKET, align 4
  %45 = call i64 @peekscan(i32 %44, %struct.TYPE_8__* %5)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REL_POINTER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i64, i64* @REL_VECTOR, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = call i32 @scan_num(%struct.TYPE_8__* %5)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @TOK_RBRACKET, align 4
  %65 = call i32 @scan(i32 %64, %struct.TYPE_8__* %5)
  br label %98

66:                                               ; preds = %39
  %67 = load i32, i32* @TOK_LANGLE, align 4
  %68 = call i64 @peekscan(i32 %67, %struct.TYPE_8__* %5)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %66
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REL_POINTER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i64, i64* @REL_ARRAY, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @TOK_RANGLE, align 4
  %83 = call i64 @peekscan(i32 %82, %struct.TYPE_8__* %5)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %87, align 8
  br label %96

88:                                               ; preds = %78
  %89 = call i32 @scan_num(%struct.TYPE_8__* %5)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @TOK_RANGLE, align 4
  %95 = call i32 @scan(i32 %94, %struct.TYPE_8__* %5)
  br label %96

96:                                               ; preds = %88, %85
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %55
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @streq(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @REL_ARRAY, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @REL_VECTOR, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %110, %104
  br label %135

119:                                              ; preds = %98
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @streq(i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @REL_ARRAY, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %125
  br label %134

134:                                              ; preds = %133, %119
  br label %135

135:                                              ; preds = %20, %134, %118
  ret void
}

declare dso_local i32 @get_type(i32*, i32*, i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @check_type_name(i32, i32) #1

declare dso_local i32 @scan2(i64, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @scan(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @peekscan(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @scan_num(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
