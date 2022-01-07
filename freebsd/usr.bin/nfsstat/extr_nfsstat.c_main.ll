; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nfsstat/extr_nfsstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i8*, i32 }
%struct.nfscl_dumpmntopts = type { i8*, i8*, i32 }

@NFSSTAT_XO_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cdEesWM:mN:w:zq\00", align 1
@optarg = common dso_local global i8* null, align 8
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@NFSSVC_DUMPMNTOPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s on %s\0A%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Only priviledged users can use the -m option\00", align 1
@widemode = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@extra_output = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"-e and -E are mutually exclusive\00", align 1
@printtitle = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"nfscommon\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"NFS client/server not loaded\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"nfsstat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1024 x i8], align 16
  %16 = alloca %struct.statfs*, align 8
  %17 = alloca %struct.nfscl_dumpmntopts, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %6, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @xo_parse_args(i32 %18, i8** %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* @NFSSTAT_XO_VERSION, align 4
  %27 = call i32 @xo_set_version(i32 %26)
  br label %28

28:                                               ; preds = %124, %25
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %125

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %122 [
    i32 77, label %35
    i32 109, label %37
    i32 78, label %86
    i32 87, label %88
    i32 119, label %89
    i32 99, label %92
    i32 100, label %97
    i32 115, label %102
    i32 122, label %107
    i32 69, label %108
    i32 101, label %114
    i32 113, label %120
    i32 63, label %121
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %11, align 8
  br label %124

37:                                               ; preds = %33
  %38 = load i32, i32* @MNT_NOWAIT, align 4
  %39 = call i32 @getmntinfo(%struct.statfs** %16, i32 %38)
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %81, %37
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %40
  %45 = load %struct.statfs*, %struct.statfs** %16, align 8
  %46 = getelementptr inbounds %struct.statfs, %struct.statfs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %struct.statfs*, %struct.statfs** %16, align 8
  %52 = getelementptr inbounds %struct.statfs, %struct.statfs* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %17, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %56 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %17, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %17, i32 0, i32 2
  store i32 1024, i32* %57, align 8
  %58 = load i32, i32* @NFSSVC_DUMPMNTOPTS, align 4
  %59 = call i32 @nfssvc(i32 %58, %struct.nfscl_dumpmntopts* %17)
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load %struct.statfs*, %struct.statfs** %16, align 8
  %63 = getelementptr inbounds %struct.statfs, %struct.statfs* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.statfs*, %struct.statfs** %16, align 8
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %69 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %64, i8* %67, i8* %68)
  br label %77

70:                                               ; preds = %50
  %71 = load i32, i32* @errno, align 4
  %72 = load i32, i32* @EPERM, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.statfs*, %struct.statfs** %16, align 8
  %80 = getelementptr inbounds %struct.statfs, %struct.statfs* %79, i32 1
  store %struct.statfs* %80, %struct.statfs** %16, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %40

84:                                               ; preds = %40
  %85 = call i32 @exit(i32 0) #3
  unreachable

86:                                               ; preds = %33
  %87 = load i8*, i8** @optarg, align 8
  store i8* %87, i8** %12, align 8
  br label %124

88:                                               ; preds = %33
  store i32 1, i32* @widemode, align 4
  br label %124

89:                                               ; preds = %33
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i64 @atoi(i8* %90)
  store i64 %91, i64* %6, align 8
  br label %124

92:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92
  br label %124

97:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %98 = load i64, i64* %6, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i64 1, i64* %6, align 8
  br label %101

101:                                              ; preds = %100, %97
  br label %124

102:                                              ; preds = %33
  store i32 1, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %124

107:                                              ; preds = %33
  store i32 1, i32* @zflag, align 4
  br label %124

108:                                              ; preds = %33
  %109 = load i64, i64* @extra_output, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %108
  store i64 2, i64* @extra_output, align 8
  br label %124

114:                                              ; preds = %33
  %115 = load i64, i64* @extra_output, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114
  store i64 1, i64* @extra_output, align 8
  br label %124

120:                                              ; preds = %33
  store i32 0, i32* @printtitle, align 4
  br label %124

121:                                              ; preds = %33
  br label %122

122:                                              ; preds = %33, %121
  %123 = call i32 (...) @usage()
  br label %124

124:                                              ; preds = %122, %120, %119, %113, %107, %106, %101, %96, %89, %88, %86, %35
  br label %28

125:                                              ; preds = %28
  %126 = load i64, i64* @optind, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %4, align 4
  %131 = load i64, i64* @optind, align 8
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 %131
  store i8** %133, i8*** %5, align 8
  %134 = load i8**, i8*** %5, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %125
  %138 = load i8**, i8*** %5, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @atoi(i8* %139)
  store i64 %140, i64* %6, align 8
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %5, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %137
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %12, align 8
  %148 = load i8**, i8*** %5, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i32 1
  store i8** %149, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i8**, i8*** %5, align 8
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %11, align 8
  br label %155

155:                                              ; preds = %152, %145
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %125
  %158 = call i64 @modfind(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %157
  %163 = load i64, i64* %6, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i64, i64* %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @exp_sidewaysintpr(i64 %166, i32 %167, i32 %168, i32 %169)
  br label %187

171:                                              ; preds = %162
  %172 = call i32 @xo_open_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i64, i64* @extra_output, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i64, i64* @extra_output, align 8
  %179 = sub nsw i64 %178, 1
  %180 = call i32 @exp_intpr(i32 %176, i32 %177, i64 %179)
  br label %185

181:                                              ; preds = %171
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @intpr(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %175
  %186 = call i32 @xo_close_container(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %165
  %188 = call i32 (...) @xo_finish()
  %189 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @xo_set_version(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @nfssvc(i32, %struct.nfscl_dumpmntopts*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @modfind(i8*) #1

declare dso_local i32 @exp_sidewaysintpr(i64, i32, i32, i32) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @exp_intpr(i32, i32, i64) #1

declare dso_local i32 @intpr(i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
