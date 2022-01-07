; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_pw_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.userconf = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"C:qn:g:h:H:M:oNPY\00", align 1
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"'-h' and '-H' are mutually exclusive options\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"-H expects a file descriptor\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"group name required\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"group name `%s' already exists\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@M_ADD = common dso_local global i32 0, align 4
@W_GROUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"NIS maps updated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pw_group_add(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.userconf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.userconf* null, %struct.userconf** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strspn(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @GID_MAX, align 4
  %33 = call i32 @pw_checkid(i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36, %3
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @getopt(i32 %39, i8** %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %85

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %84 [
    i32 67, label %45
    i32 113, label %47
    i32 110, label %48
    i32 103, label %50
    i32 72, label %54
    i32 104, label %69
    i32 77, label %78
    i32 111, label %80
    i32 78, label %81
    i32 80, label %82
    i32 89, label %83
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** @optarg, align 8
  store i8* %46, i8** %10, align 8
  br label %84

47:                                               ; preds = %43
  store i32 1, i32* %15, align 4
  br label %84

48:                                               ; preds = %43
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %8, align 8
  br label %84

50:                                               ; preds = %43
  %51 = load i8*, i8** @optarg, align 8
  %52 = load i32, i32* @GID_MAX, align 4
  %53 = call i32 @pw_checkid(i8* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %84

54:                                               ; preds = %43
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EX_USAGE, align 4
  %59 = call i32 (i32, i8*, ...) @errx(i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @pw_checkfd(i8* %61)
  store i32 %62, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, 45
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EX_USAGE, align 4
  %67 = call i32 (i32, i8*, ...) @errx(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  br label %84

69:                                               ; preds = %43
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EX_USAGE, align 4
  %74 = call i32 (i32, i8*, ...) @errx(i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i32 @pw_checkfd(i8* %76)
  store i32 %77, i32* %14, align 4
  br label %84

78:                                               ; preds = %43
  %79 = load i8*, i8** @optarg, align 8
  store i8* %79, i8** %9, align 8
  br label %84

80:                                               ; preds = %43
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  br label %84

81:                                               ; preds = %43
  store i32 1, i32* %17, align 4
  br label %84

82:                                               ; preds = %43
  store i32 1, i32* %18, align 4
  br label %84

83:                                               ; preds = %43
  store i32 1, i32* %19, align 4
  br label %84

84:                                               ; preds = %43, %83, %82, %81, %80, %78, %75, %68, %50, %48, %47, %45
  br label %38

85:                                               ; preds = %38
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @_PATH_DEVNULL, align 4
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @freopen(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @EX_DATAERR, align 4
  %97 = call i32 (i32, i8*, ...) @errx(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i8*, i8** %8, align 8
  %100 = call i32* @GETGRNAM(i8* %99)
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @EX_DATAERR, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 (i32, i8*, ...) @errx(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i8*, i8** %10, align 8
  %108 = call %struct.userconf* @get_userconfig(i8* %107)
  store %struct.userconf* %108, %struct.userconf** %7, align 8
  %109 = load %struct.userconf*, %struct.userconf** %7, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.userconf*, %struct.userconf** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @gr_gidpolicy(%struct.userconf* %111, i32 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @groupadd(%struct.userconf* %109, i8* %110, i32 %113, i8* %114, i32 %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %106
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @EXIT_SUCCESS, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = call i64 (...) @nis_update()
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.userconf*, %struct.userconf** %7, align 8
  %131 = load i32, i32* @M_ADD, align 4
  %132 = load i32, i32* @W_GROUP, align 4
  %133 = call i32 @pw_log(%struct.userconf* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %126, %122, %106
  %135 = load i32, i32* %13, align 4
  ret i32 %135
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @pw_checkid(i8*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @pw_checkfd(i8*) #1

declare dso_local i32 @freopen(i32, i8*, i32) #1

declare dso_local i32* @GETGRNAM(i8*) #1

declare dso_local %struct.userconf* @get_userconfig(i8*) #1

declare dso_local i32 @groupadd(%struct.userconf*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gr_gidpolicy(%struct.userconf*, i32) #1

declare dso_local i64 @nis_update(...) #1

declare dso_local i32 @pw_log(%struct.userconf*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
