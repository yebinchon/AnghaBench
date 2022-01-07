; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lastlogin/extr_lastlogin.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lastlogin/extr_lastlogin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"f:rt\00", align 1
@optarg = common dso_local global i32 0, align 4
@file = common dso_local global i32 0, align 4
@order = common dso_local global i32 0, align 4
@utcmp_time = common dso_local global i32 0, align 4
@utcmp = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"lastlogin-information\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"lastlogin\00", align 1
@UTXDB_LASTLOGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to open lastlog database\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"user '%s' not found\00", align 1
@USER_PROCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.utmpx*, align 8
  %10 = alloca %struct.utmpx*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @xo_parse_args(i32 %11, i8** %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @exit(i32 1) #4
  unreachable

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %31 [
    i32 102, label %26
    i32 114, label %28
    i32 116, label %29
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @optarg, align 4
  store i32 %27, i32* @file, align 4
  br label %33

28:                                               ; preds = %24
  store i32 -1, i32* @order, align 4
  br label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @utcmp_time, align 4
  store i32 %30, i32* @utcmp, align 4
  br label %33

31:                                               ; preds = %24
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %29, %28, %26
  br label %19

34:                                               ; preds = %19
  %35 = load i64, i64* @optind, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  %40 = load i64, i64* @optind, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 %40
  store i8** %42, i8*** %5, align 8
  %43 = call i32 @xo_open_container(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 @xo_open_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32, i32* @UTXDB_LASTLOGIN, align 4
  %54 = load i32, i32* @file, align 4
  %55 = call i64 @setutxdb(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i8**, i8*** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call %struct.utmpx* @getutxuser(i8* %64)
  store %struct.utmpx* %65, %struct.utmpx** %9, align 8
  %66 = icmp eq %struct.utmpx* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @xo_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  br label %78

74:                                               ; preds = %59
  %75 = load %struct.utmpx*, %struct.utmpx** %9, align 8
  %76 = call i32 @output(%struct.utmpx* %75)
  %77 = call i32 (...) @endutxent()
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %48

81:                                               ; preds = %48
  br label %146

82:                                               ; preds = %34
  %83 = load i32, i32* @UTXDB_LASTLOGIN, align 4
  %84 = load i32, i32* @file, align 4
  %85 = call i64 @setutxdb(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  store %struct.utmpx* null, %struct.utmpx** %10, align 8
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %117, %99, %89
  %91 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %91, %struct.utmpx** %9, align 8
  %92 = icmp ne %struct.utmpx* %91, null
  br i1 %92, label %93, label %126

93:                                               ; preds = %90
  %94 = load %struct.utmpx*, %struct.utmpx** %9, align 8
  %95 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @USER_PROCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %90

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = srem i32 %101, 16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.utmpx*, %struct.utmpx** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 16
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call %struct.utmpx* @realloc(%struct.utmpx* %105, i32 %110)
  store %struct.utmpx* %111, %struct.utmpx** %10, align 8
  %112 = load %struct.utmpx*, %struct.utmpx** %10, align 8
  %113 = icmp eq %struct.utmpx* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %104
  br label %117

117:                                              ; preds = %116, %100
  %118 = load %struct.utmpx*, %struct.utmpx** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %118, i64 %121
  %123 = load %struct.utmpx*, %struct.utmpx** %9, align 8
  %124 = bitcast %struct.utmpx* %122 to i8*
  %125 = bitcast %struct.utmpx* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 8, i1 false)
  br label %90

126:                                              ; preds = %90
  %127 = call i32 (...) @endutxent()
  %128 = load %struct.utmpx*, %struct.utmpx** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @utcmp, align 4
  %131 = call i32 @qsort(%struct.utmpx* %128, i32 %129, i32 8, i32 %130)
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %142, %126
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.utmpx*, %struct.utmpx** %10, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %137, i64 %139
  %141 = call i32 @output(%struct.utmpx* %140)
  br label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %132

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %81
  %147 = call i32 @xo_close_list(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %148 = call i32 @xo_close_container(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %149 = call i32 (...) @xo_finish()
  %150 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i64 @setutxdb(i32, i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local %struct.utmpx* @getutxuser(i8*) #1

declare dso_local i32 @xo_warnx(i8*, i8*) #1

declare dso_local i32 @output(%struct.utmpx*) #1

declare dso_local i32 @endutxent(...) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local %struct.utmpx* @realloc(%struct.utmpx*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @qsort(%struct.utmpx*, i32, i32, i32) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
