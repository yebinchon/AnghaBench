; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmccontrol/extr_pmccontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmccontrol/extr_pmccontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcc_op = type { i32, i32, i32 }

@PMCC_CPU_ALL = common dso_local global i32 0, align 4
@PMCC_PRINT_USAGE = common dso_local global i32 0, align 4
@head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c":c:d:e:lLs\00", align 1
@optarg = common dso_local global i32* null, align 8
@PMCC_CPU_WILDCARD = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a valid CPU id\00", align 1
@PMCC_PMC_WILDCARD = common dso_local global i32 0, align 4
@PMCC_PMC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a valid PMC id\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@PMCC_OP_DISABLE = common dso_local global i32 0, align 4
@PMCC_OP_ENABLE = common dso_local global i32 0, align 4
@op_next = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Missing argument to option '-%c'\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Unrecognized option \22-%c\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@usage_message = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Initialization of the pmc(3) library failed\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"No PMCs specified to enable or disable\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"Command failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.pmcc_op*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @PMCC_CPU_ALL, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %15 = call i32 @STAILQ_INIT(i32* @head)
  br label %16

16:                                               ; preds = %139, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %140

21:                                               ; preds = %16
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %138 [
    i32 76, label %23
    i32 99, label %29
    i32 100, label %60
    i32 101, label %60
    i32 108, label %116
    i32 115, label %122
    i32 58, label %128
    i32 63, label %132
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %139

28:                                               ; preds = %23
  store i32 129, i32* %7, align 4
  br label %139

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 131
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %139

37:                                               ; preds = %33, %29
  store i32 131, i32* %7, align 4
  %38 = load i32*, i32** @optarg, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PMCC_CPU_WILDCARD, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @PMCC_CPU_ALL, align 4
  store i32 %43, i32* %8, align 4
  br label %59

44:                                               ; preds = %37
  %45 = load i32*, i32** @optarg, align 8
  %46 = call i32 @strtoul(i32* %45, i8** %11, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %44
  %55 = load i32, i32* @EX_DATAERR, align 4
  %56 = load i32*, i32** @optarg, align 8
  %57 = call i32 (i32, i8*, ...) @errx(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %56)
  br label %58

58:                                               ; preds = %54, %51
  br label %59

59:                                               ; preds = %58, %42
  br label %139

60:                                               ; preds = %21, %21
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 131
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %139

68:                                               ; preds = %64, %60
  store i32 131, i32* %7, align 4
  %69 = load i32*, i32** @optarg, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PMCC_PMC_WILDCARD, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @PMCC_PMC_ALL, align 4
  store i32 %74, i32* %10, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load i32*, i32** @optarg, align 8
  %77 = call i32 @strtoul(i32* %76, i8** %11, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %75
  %86 = load i32, i32* @EX_DATAERR, align 4
  %87 = load i32*, i32** @optarg, align 8
  %88 = call i32 (i32, i8*, ...) @errx(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %73
  %91 = call %struct.pmcc_op* @malloc(i32 12)
  store %struct.pmcc_op* %91, %struct.pmcc_op** %12, align 8
  %92 = icmp eq %struct.pmcc_op* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EX_SOFTWARE, align 4
  %95 = call i32 @err(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.pmcc_op*, %struct.pmcc_op** %12, align 8
  %99 = getelementptr inbounds %struct.pmcc_op, %struct.pmcc_op* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.pmcc_op*, %struct.pmcc_op** %12, align 8
  %102 = getelementptr inbounds %struct.pmcc_op, %struct.pmcc_op* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 100
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @PMCC_OP_DISABLE, align 4
  br label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @PMCC_OP_ENABLE, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.pmcc_op*, %struct.pmcc_op** %12, align 8
  %112 = getelementptr inbounds %struct.pmcc_op, %struct.pmcc_op* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.pmcc_op*, %struct.pmcc_op** %12, align 8
  %114 = load i32, i32* @op_next, align 4
  %115 = call i32 @STAILQ_INSERT_TAIL(i32* @head, %struct.pmcc_op* %113, i32 %114)
  br label %139

116:                                              ; preds = %21
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %6, align 4
  br label %139

121:                                              ; preds = %116
  store i32 130, i32* %7, align 4
  br label %139

122:                                              ; preds = %21
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* %6, align 4
  br label %139

127:                                              ; preds = %122
  store i32 128, i32* %7, align 4
  br label %139

128:                                              ; preds = %21
  %129 = load i32, i32* @EX_USAGE, align 4
  %130 = load i32, i32* @optopt, align 4
  %131 = call i32 (i32, i8*, ...) @errx(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %139

132:                                              ; preds = %21
  %133 = load i32, i32* @optopt, align 4
  %134 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @EX_USAGE, align 4
  %136 = load i32, i32* @usage_message, align 4
  %137 = call i32 (i32, i8*, ...) @errx(i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %139

138:                                              ; preds = %21
  store i32 1, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %132, %128, %127, %126, %121, %120, %109, %67, %59, %36, %28, %27
  br label %16

140:                                              ; preds = %16
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @PMCC_PRINT_USAGE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @EX_USAGE, align 4
  %146 = load i32, i32* @usage_message, align 4
  %147 = call i32 (i32, i8*, ...) @errx(i32 %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @EX_USAGE, align 4
  %153 = call i32 @exit(i32 %152) #3
  unreachable

154:                                              ; preds = %148
  %155 = call i64 (...) @pmc_init()
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @EX_UNAVAILABLE, align 4
  %159 = call i32 @err(i32 %158, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* %7, align 4
  switch i32 %161, label %176 [
    i32 130, label %162
    i32 129, label %164
    i32 128, label %166
    i32 131, label %168
  ]

162:                                              ; preds = %160
  %163 = call i32 (...) @pmcc_do_list_state()
  store i32 %163, i32* %6, align 4
  br label %178

164:                                              ; preds = %160
  %165 = call i32 (...) @pmcc_do_list_events()
  store i32 %165, i32* %6, align 4
  br label %178

166:                                              ; preds = %160
  %167 = call i32 (...) @pmcc_show_statistics()
  store i32 %167, i32* %6, align 4
  br label %178

168:                                              ; preds = %160
  %169 = call i32 @STAILQ_EMPTY(i32* @head)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @EX_USAGE, align 4
  %173 = call i32 (i32, i8*, ...) @errx(i32 %172, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %168
  %175 = call i32 @pmcc_do_enable_disable(i32* @head)
  store i32 %175, i32* %6, align 4
  br label %178

176:                                              ; preds = %160
  %177 = call i32 @assert(i32 0)
  br label %178

178:                                              ; preds = %176, %174, %166, %164, %162
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @EX_OSERR, align 4
  %183 = call i32 @err(i32 %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %178
  %185 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i32*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local %struct.pmcc_op* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pmcc_op*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @pmc_init(...) #1

declare dso_local i32 @pmcc_do_list_state(...) #1

declare dso_local i32 @pmcc_do_list_events(...) #1

declare dso_local i32 @pmcc_show_statistics(...) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @pmcc_do_enable_disable(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
