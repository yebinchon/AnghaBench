; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efivar/extr_efivar.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"aAbdDf:gHlLNn:OpRt:uw\00", align 1
@longopts = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@Aflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@Dflag = common dso_local global i32 0, align 4
@gflag = common dso_local global i32 0, align 4
@Hflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@Lflag = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@varname = common dso_local global i8* null, align 8
@Nflag = common dso_local global i32 0, align 4
@load_opt_flag = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@Rflag = common dso_local global i32 0, align 4
@attrib = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@wflag = common dso_local global i32 0, align 4
@fromfile = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"unknown or unimplemented option\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"Can only use one of -a (--append), -D (--delete) and -w (--write)\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Must specify a variable for -a (--append), -D (--delete) or -w (--write)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %7

7:                                                ; preds = %74, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* @longopts, align 4
  %11 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %75

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %72 [
    i32 97, label %15
    i32 65, label %18
    i32 98, label %21
    i32 100, label %24
    i32 68, label %27
    i32 103, label %30
    i32 72, label %33
    i32 108, label %36
    i32 76, label %39
    i32 110, label %42
    i32 78, label %44
    i32 79, label %47
    i32 112, label %50
    i32 82, label %53
    i32 116, label %56
    i32 117, label %59
    i32 119, label %62
    i32 102, label %65
    i32 0, label %70
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @aflag, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @aflag, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load i32, i32* @Aflag, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @Aflag, align 4
  br label %74

21:                                               ; preds = %13
  %22 = load i32, i32* @bflag, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @bflag, align 4
  br label %74

24:                                               ; preds = %13
  %25 = load i32, i32* @dflag, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @dflag, align 4
  br label %74

27:                                               ; preds = %13
  %28 = load i32, i32* @Dflag, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @Dflag, align 4
  br label %74

30:                                               ; preds = %13
  %31 = load i32, i32* @gflag, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @gflag, align 4
  br label %74

33:                                               ; preds = %13
  %34 = load i32, i32* @Hflag, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @Hflag, align 4
  br label %74

36:                                               ; preds = %13
  %37 = load i32, i32* @lflag, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @lflag, align 4
  br label %74

39:                                               ; preds = %13
  %40 = load i64, i64* @Lflag, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @Lflag, align 8
  br label %74

42:                                               ; preds = %13
  %43 = load i8*, i8** @optarg, align 8
  store i8* %43, i8** @varname, align 8
  br label %74

44:                                               ; preds = %13
  %45 = load i32, i32* @Nflag, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @Nflag, align 4
  br label %74

47:                                               ; preds = %13
  %48 = load i32, i32* @load_opt_flag, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @load_opt_flag, align 4
  br label %74

50:                                               ; preds = %13
  %51 = load i32, i32* @pflag, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @pflag, align 4
  br label %74

53:                                               ; preds = %13
  %54 = load i32, i32* @Rflag, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @Rflag, align 4
  br label %74

56:                                               ; preds = %13
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @strtoul(i8* %57, i32* null, i32 16)
  store i32 %58, i32* @attrib, align 4
  br label %74

59:                                               ; preds = %13
  %60 = load i32, i32* @uflag, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @uflag, align 4
  br label %74

62:                                               ; preds = %13
  %63 = load i32, i32* @wflag, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @wflag, align 4
  br label %74

65:                                               ; preds = %13
  %66 = load i64, i64* @fromfile, align 8
  %67 = call i32 @free(i64 %66)
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i64 @strdup(i8* %68)
  store i64 %69, i64* @fromfile, align 8
  br label %74

70:                                               ; preds = %13
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %74

72:                                               ; preds = %13
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %70, %65, %62, %59, %56, %53, %50, %47, %44, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  br label %7

75:                                               ; preds = %7
  %76 = load i64, i64* @optind, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  %81 = load i64, i64* @optind, align 8
  %82 = load i8**, i8*** %4, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 %81
  store i8** %83, i8*** %4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i8**, i8*** %4, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** @varname, align 8
  br label %90

90:                                               ; preds = %86, %75
  %91 = load i32, i32* @aflag, align 4
  %92 = load i32, i32* @Dflag, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* @wflag, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = call i32 @warnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 (...) @usage()
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* @aflag, align 4
  %102 = load i32, i32* @Dflag, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @wflag, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i8*, i8** @varname, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = call i32 @warnx(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 (...) @usage()
  br label %113

113:                                              ; preds = %110, %107, %100
  %114 = load i32, i32* @aflag, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** @varname, align 8
  %118 = call i32 @append_variable(i8* %117, i32* null)
  br label %178

119:                                              ; preds = %113
  %120 = load i32, i32* @Dflag, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** @varname, align 8
  %124 = call i32 @delete_variable(i8* %123)
  br label %177

125:                                              ; preds = %119
  %126 = load i32, i32* @wflag, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i8*, i8** @varname, align 8
  %130 = call i32 @write_variable(i8* %129, i32* null)
  br label %176

131:                                              ; preds = %125
  %132 = load i64, i64* @Lflag, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (...) @print_known_guid()
  br label %175

136:                                              ; preds = %131
  %137 = load i64, i64* @fromfile, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  store i32 1, i32* @Nflag, align 4
  %140 = call i32 @print_var(i32* null, i32* null)
  br label %174

141:                                              ; preds = %136
  %142 = load i8*, i8** @varname, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* @pflag, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @pflag, align 4
  %147 = load i8*, i8** @varname, align 8
  %148 = call i32 @print_variable(i8* %147)
  br label %173

149:                                              ; preds = %141
  %150 = load i32, i32* %3, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, i32* @pflag, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @pflag, align 4
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %166, %152
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %3, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @print_variable(i8* %164)
  br label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %155

169:                                              ; preds = %155
  br label %172

170:                                              ; preds = %149
  %171 = call i32 (...) @print_variables()
  br label %172

172:                                              ; preds = %170, %169
  br label %173

173:                                              ; preds = %172, %144
  br label %174

174:                                              ; preds = %173, %139
  br label %175

175:                                              ; preds = %174, %134
  br label %176

176:                                              ; preds = %175, %128
  br label %177

177:                                              ; preds = %176, %122
  br label %178

178:                                              ; preds = %177, %116
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @append_variable(i8*, i32*) #1

declare dso_local i32 @delete_variable(i8*) #1

declare dso_local i32 @write_variable(i8*, i32*) #1

declare dso_local i32 @print_known_guid(...) #1

declare dso_local i32 @print_var(i32*, i32*) #1

declare dso_local i32 @print_variable(i8*) #1

declare dso_local i32 @print_variables(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
