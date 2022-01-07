; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.protox = type { i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@af = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"46AaBbdF:f:ghI:iLlM:mN:nPp:Qq:RrSTsuWw:xz\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"IPv4 support is not compiled in\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IPv6 support is not compiled in\00", align 1
@Aflag = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@Bflag = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%s: invalid fib\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: unknown address family\00", align 1
@gflag = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@interface = common dso_local global i8* null, align 8
@unit = common dso_local global i8* null, align 8
@Lflag = common dso_local global i32 0, align 4
@memf = common dso_local global i8* null, align 8
@mflag = common dso_local global i32 0, align 4
@nlistf = common dso_local global i8* null, align 8
@numeric_port = common dso_local global i32 0, align 4
@numeric_addr = common dso_local global i32 0, align 4
@Pflag = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"%s: unknown or uninstrumented protocol\00", align 1
@pflag = common dso_local global i32 0, align 4
@Qflag = common dso_local global i32 0, align 4
@noutputs = common dso_local global i8* null, align 8
@rflag = common dso_local global i32 0, align 4
@Rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@Wflag = common dso_local global i32 0, align 4
@interval = common dso_local global i64 0, align 8
@Tflag = common dso_local global i32 0, align 4
@xflag = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@live = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@nl = common dso_local global %struct.TYPE_3__* null, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"-x and -T are incompatible, pick one.\00", align 1
@kvmd = common dso_local global i32* null, align 8
@N_SFSTAT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@protox = common dso_local global %struct.protox* null, align 8
@N_UNP_COUNT = common dso_local global i64 0, align 8
@N_UNP_GENCNT = common dso_local global i64 0, align 8
@N_UNP_DHEAD = common dso_local global i64 0, align 8
@N_UNP_SHEAD = common dso_local global i64 0, align 8
@N_UNP_SPHEAD = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_NETGRAPH = common dso_local global i64 0, align 8
@PF_KEY = common dso_local global i64 0, align 8
@ip6protox = common dso_local global %struct.protox* null, align 8
@netgraphprotox = common dso_local global %struct.protox* null, align 8
@pfkeyprotox = common dso_local global %struct.protox* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.protox*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.protox* null, %struct.protox** %6, align 8
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %12 = load i64, i64* @AF_UNSPEC, align 8
  store i64 %12, i64* @af, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @xo_parse_args(i32 %13, i8** %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %150, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %151

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %148 [
    i32 52, label %29
    i32 54, label %31
    i32 65, label %33
    i32 97, label %34
    i32 66, label %35
    i32 98, label %36
    i32 100, label %37
    i32 70, label %38
    i32 102, label %60
    i32 103, label %88
    i32 104, label %89
    i32 73, label %90
    i32 105, label %104
    i32 76, label %105
    i32 77, label %106
    i32 109, label %108
    i32 78, label %109
    i32 110, label %111
    i32 80, label %112
    i32 112, label %113
    i32 81, label %121
    i32 113, label %122
    i32 114, label %131
    i32 82, label %132
    i32 115, label %133
    i32 83, label %136
    i32 117, label %137
    i32 87, label %139
    i32 108, label %139
    i32 119, label %140
    i32 84, label %144
    i32 120, label %145
    i32 122, label %146
    i32 63, label %147
  ]

29:                                               ; preds = %27
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %150

31:                                               ; preds = %27
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %150

33:                                               ; preds = %27
  store i32 1, i32* @Aflag, align 4
  br label %150

34:                                               ; preds = %27
  store i32 1, i32* @aflag, align 4
  br label %150

35:                                               ; preds = %27
  store i32 1, i32* @Bflag, align 4
  br label %150

36:                                               ; preds = %27
  store i32 1, i32* @bflag, align 4
  br label %150

37:                                               ; preds = %27
  store i32 1, i32* @dflag, align 4
  br label %150

38:                                               ; preds = %27
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strtol(i8* %39, i8** %9, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @EINVAL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @errno, align 4
  %54 = load i32, i32* @ERANGE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %48, %38
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %52, %45
  br label %150

60:                                               ; preds = %27
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @AF_INET, align 8
  store i64 %65, i64* @af, align 8
  br label %87

66:                                               ; preds = %60
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66
  %75 = load i64, i64* @AF_UNIX, align 8
  store i64 %75, i64* @af, align 8
  br label %86

76:                                               ; preds = %70
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @AF_LINK, align 8
  store i64 %81, i64* @af, align 8
  br label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %64
  br label %150

88:                                               ; preds = %27
  store i32 1, i32* @gflag, align 4
  br label %150

89:                                               ; preds = %27
  store i32 1, i32* @hflag, align 4
  br label %150

90:                                               ; preds = %27
  store i32 1, i32* @iflag, align 4
  %91 = load i8*, i8** @optarg, align 8
  store i8* %91, i8** @interface, align 8
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %98, %90
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @isalpha(i8 signext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %11, align 8
  br label %92

101:                                              ; preds = %92
  %102 = load i8*, i8** %11, align 8
  %103 = call i8* @atoi(i8* %102)
  store i8* %103, i8** @unit, align 8
  br label %150

104:                                              ; preds = %27
  store i32 1, i32* @iflag, align 4
  br label %150

105:                                              ; preds = %27
  store i32 1, i32* @Lflag, align 4
  br label %150

106:                                              ; preds = %27
  %107 = load i8*, i8** @optarg, align 8
  store i8* %107, i8** @memf, align 8
  br label %150

108:                                              ; preds = %27
  store i32 1, i32* @mflag, align 4
  br label %150

109:                                              ; preds = %27
  %110 = load i8*, i8** @optarg, align 8
  store i8* %110, i8** @nlistf, align 8
  br label %150

111:                                              ; preds = %27
  store i32 1, i32* @numeric_port, align 4
  store i32 1, i32* @numeric_addr, align 4
  br label %150

112:                                              ; preds = %27
  store i32 1, i32* @Pflag, align 4
  br label %150

113:                                              ; preds = %27
  %114 = load i8*, i8** @optarg, align 8
  %115 = call %struct.protox* @name2protox(i8* %114)
  store %struct.protox* %115, %struct.protox** %6, align 8
  %116 = icmp eq %struct.protox* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i8*, i8** @optarg, align 8
  %119 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %117, %113
  store i32 1, i32* @pflag, align 4
  br label %150

121:                                              ; preds = %27
  store i32 1, i32* @Qflag, align 4
  br label %150

122:                                              ; preds = %27
  %123 = load i8*, i8** @optarg, align 8
  %124 = call i8* @atoi(i8* %123)
  store i8* %124, i8** @noutputs, align 8
  %125 = load i8*, i8** @noutputs, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** @noutputs, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** @noutputs, align 8
  br label %130

130:                                              ; preds = %127, %122
  br label %150

131:                                              ; preds = %27
  store i32 1, i32* @rflag, align 4
  br label %150

132:                                              ; preds = %27
  store i32 1, i32* @Rflag, align 4
  br label %150

133:                                              ; preds = %27
  %134 = load i64, i64* @sflag, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* @sflag, align 8
  br label %150

136:                                              ; preds = %27
  store i32 1, i32* @numeric_addr, align 4
  br label %150

137:                                              ; preds = %27
  %138 = load i64, i64* @AF_UNIX, align 8
  store i64 %138, i64* @af, align 8
  br label %150

139:                                              ; preds = %27, %27
  store i32 1, i32* @Wflag, align 4
  br label %150

140:                                              ; preds = %27
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i8* @atoi(i8* %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* @interval, align 8
  store i32 1, i32* @iflag, align 4
  br label %150

144:                                              ; preds = %27
  store i32 1, i32* @Tflag, align 4
  br label %150

145:                                              ; preds = %27
  store i32 1, i32* @xflag, align 4
  br label %150

146:                                              ; preds = %27
  store i32 1, i32* @zflag, align 4
  br label %150

147:                                              ; preds = %27
  br label %148

148:                                              ; preds = %27, %147
  %149 = call i32 (...) @usage()
  br label %150

150:                                              ; preds = %148, %146, %145, %144, %140, %139, %137, %136, %133, %132, %131, %130, %121, %120, %112, %111, %109, %108, %106, %105, %104, %101, %89, %88, %87, %59, %37, %36, %35, %34, %33, %31, %29
  br label %22

151:                                              ; preds = %22
  %152 = load i64, i64* @optind, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 %152
  store i8** %154, i8*** %5, align 8
  %155 = load i64, i64* @optind, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %4, align 4
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %197

163:                                              ; preds = %151
  %164 = load i8**, i8*** %5, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @isdigit(i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load i8**, i8*** %5, align 8
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @atoi(i8* %171)
  %173 = ptrtoint i8* %172 to i64
  store i64 %173, i64* @interval, align 8
  %174 = load i64, i64* @interval, align 8
  %175 = icmp sle i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = call i32 (...) @usage()
  br label %178

178:                                              ; preds = %176, %169
  %179 = load i8**, i8*** %5, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %5, align 8
  store i32 1, i32* @iflag, align 4
  br label %181

181:                                              ; preds = %178, %163
  %182 = load i8**, i8*** %5, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = load i8**, i8*** %5, align 8
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** @nlistf, align 8
  %188 = load i8**, i8*** %5, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i32 1
  store i8** %189, i8*** %5, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i8**, i8*** %5, align 8
  %194 = load i8*, i8** %193, align 8
  store i8* %194, i8** @memf, align 8
  br label %195

195:                                              ; preds = %192, %185
  br label %196

196:                                              ; preds = %195, %181
  br label %197

197:                                              ; preds = %196, %151
  %198 = load i8*, i8** @nlistf, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** @memf, align 8
  %202 = icmp eq i8* %201, null
  br label %203

203:                                              ; preds = %200, %197
  %204 = phi i1 [ false, %197 ], [ %202, %200 ]
  %205 = zext i1 %204 to i32
  store i32 %205, i32* @live, align 4
  %206 = load i32, i32* @live, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %217, label %208

208:                                              ; preds = %203
  %209 = call i32 (...) @getgid()
  %210 = call i64 @setgid(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = call i32 @xo_err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %208
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %216 = call i32 @kresolve_list(%struct.TYPE_3__* %215)
  br label %217

217:                                              ; preds = %214, %203
  %218 = load i32, i32* @xflag, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load i32, i32* @Tflag, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (i32, i8*, ...) @xo_errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %220, %217
  %226 = load i32, i32* @Bflag, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  %229 = load i32, i32* @live, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = call i32 (...) @usage()
  br label %233

233:                                              ; preds = %231, %228
  %234 = load i8*, i8** @interface, align 8
  %235 = call i32 @bpf_stats(i8* %234)
  %236 = call i32 (...) @xo_finish()
  %237 = call i32 @exit(i32 0) #3
  unreachable

238:                                              ; preds = %225
  %239 = load i32, i32* @mflag, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %238
  %242 = load i32, i32* @live, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %241
  %245 = call i64 @kread(i32 0, i32* null, i32 0)
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %244
  %248 = load i32*, i32** @kvmd, align 8
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %250 = load i64, i64* @N_SFSTAT, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @mbpr(i32* %248, i32 %253)
  br label %255

255:                                              ; preds = %247, %244
  br label %258

256:                                              ; preds = %241
  %257 = call i32 @mbpr(i32* null, i32 0)
  br label %258

258:                                              ; preds = %256, %255
  %259 = call i32 (...) @xo_finish()
  %260 = call i32 @exit(i32 0) #3
  unreachable

261:                                              ; preds = %238
  %262 = load i32, i32* @Qflag, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %261
  %265 = load i32, i32* @live, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = call i64 @kread(i32 0, i32* null, i32 0)
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = call i32 (...) @netisr_stats()
  br label %272

272:                                              ; preds = %270, %267
  br label %275

273:                                              ; preds = %264
  %274 = call i32 (...) @netisr_stats()
  br label %275

275:                                              ; preds = %273, %272
  %276 = call i32 (...) @xo_finish()
  %277 = call i32 @exit(i32 0) #3
  unreachable

278:                                              ; preds = %261
  %279 = load i32, i32* @iflag, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %278
  %282 = load i64, i64* @sflag, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %281
  %285 = call i32 @xo_open_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %286 = load i64, i64* @af, align 8
  %287 = call i32 @intpr(i32* null, i64 %286)
  %288 = call i32 @xo_close_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %289 = call i32 (...) @xo_finish()
  %290 = call i32 @exit(i32 0) #3
  unreachable

291:                                              ; preds = %281, %278
  %292 = load i32, i32* @rflag, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %308

294:                                              ; preds = %291
  %295 = call i32 @xo_open_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %296 = load i64, i64* @sflag, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = call i32 (...) @rt_stats()
  br label %304

300:                                              ; preds = %294
  %301 = load i32, i32* %8, align 4
  %302 = load i64, i64* @af, align 8
  %303 = call i32 @routepr(i32 %301, i64 %302)
  br label %304

304:                                              ; preds = %300, %298
  %305 = call i32 @xo_close_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %306 = call i32 (...) @xo_finish()
  %307 = call i32 @exit(i32 0) #3
  unreachable

308:                                              ; preds = %291
  %309 = load i32, i32* @gflag, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %341

311:                                              ; preds = %308
  %312 = call i32 @xo_open_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %313 = load i64, i64* @sflag, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %326

315:                                              ; preds = %311
  %316 = load i64, i64* @af, align 8
  %317 = load i64, i64* @AF_INET, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %323, label %319

319:                                              ; preds = %315
  %320 = load i64, i64* @af, align 8
  %321 = load i64, i64* @AF_UNSPEC, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %319, %315
  %324 = call i32 (...) @mrt_stats()
  br label %325

325:                                              ; preds = %323, %319
  br label %337

326:                                              ; preds = %311
  %327 = load i64, i64* @af, align 8
  %328 = load i64, i64* @AF_INET, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %334, label %330

330:                                              ; preds = %326
  %331 = load i64, i64* @af, align 8
  %332 = load i64, i64* @AF_UNSPEC, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %330, %326
  %335 = call i32 (...) @mroutepr()
  br label %336

336:                                              ; preds = %334, %330
  br label %337

337:                                              ; preds = %336, %325
  %338 = call i32 @xo_close_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %339 = call i32 (...) @xo_finish()
  %340 = call i32 @exit(i32 0) #3
  unreachable

341:                                              ; preds = %308
  %342 = load %struct.protox*, %struct.protox** %6, align 8
  %343 = icmp ne %struct.protox* %342, null
  br i1 %343, label %344, label %359

344:                                              ; preds = %341
  %345 = call i32 @xo_open_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %346 = load %struct.protox*, %struct.protox** %6, align 8
  %347 = load %struct.protox*, %struct.protox** %6, align 8
  %348 = getelementptr inbounds %struct.protox, %struct.protox* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @printproto(%struct.protox* %346, i64 %349, i32* %10)
  %351 = load i32, i32* %10, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %344
  %354 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %344
  %356 = call i32 @xo_close_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %357 = call i32 (...) @xo_finish()
  %358 = call i32 @exit(i32 0) #3
  unreachable

359:                                              ; preds = %341
  %360 = call i32 @xo_open_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %361 = load i64, i64* @af, align 8
  %362 = load i64, i64* @AF_INET, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %368, label %364

364:                                              ; preds = %359
  %365 = load i64, i64* @af, align 8
  %366 = load i64, i64* @AF_UNSPEC, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %385

368:                                              ; preds = %364, %359
  %369 = load %struct.protox*, %struct.protox** @protox, align 8
  store %struct.protox* %369, %struct.protox** %6, align 8
  br label %370

370:                                              ; preds = %381, %368
  %371 = load %struct.protox*, %struct.protox** %6, align 8
  %372 = getelementptr inbounds %struct.protox, %struct.protox* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %370
  %376 = load %struct.protox*, %struct.protox** %6, align 8
  %377 = load %struct.protox*, %struct.protox** %6, align 8
  %378 = getelementptr inbounds %struct.protox, %struct.protox* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @printproto(%struct.protox* %376, i64 %379, i32* %10)
  br label %381

381:                                              ; preds = %375
  %382 = load %struct.protox*, %struct.protox** %6, align 8
  %383 = getelementptr inbounds %struct.protox, %struct.protox* %382, i32 1
  store %struct.protox* %383, %struct.protox** %6, align 8
  br label %370

384:                                              ; preds = %370
  br label %385

385:                                              ; preds = %384, %364
  %386 = load i64, i64* @af, align 8
  %387 = load i64, i64* @AF_UNIX, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %385
  %390 = load i64, i64* @af, align 8
  %391 = load i64, i64* @AF_UNSPEC, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %423

393:                                              ; preds = %389, %385
  %394 = load i64, i64* @sflag, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %423, label %396

396:                                              ; preds = %393
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %398 = load i64, i64* @N_UNP_COUNT, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %403 = load i64, i64* @N_UNP_GENCNT, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %408 = load i64, i64* @N_UNP_DHEAD, align 8
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %413 = load i64, i64* @N_UNP_SHEAD, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nl, align 8
  %418 = load i64, i64* @N_UNP_SPHEAD, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @unixpr(i32 %401, i32 %406, i32 %411, i32 %416, i32 %421, i32* %10)
  br label %423

423:                                              ; preds = %396, %393, %389
  %424 = load i32, i32* %10, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %423
  %427 = call i32 @xo_close_list(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %428

428:                                              ; preds = %426, %423
  %429 = call i32 @xo_close_container(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %430 = call i32 (...) @xo_finish()
  %431 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @xo_errx(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local %struct.protox* @name2protox(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @kresolve_list(%struct.TYPE_3__*) #1

declare dso_local i32 @bpf_stats(i8*) #1

declare dso_local i32 @xo_finish(...) #1

declare dso_local i64 @kread(i32, i32*, i32) #1

declare dso_local i32 @mbpr(i32*, i32) #1

declare dso_local i32 @netisr_stats(...) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @intpr(i32*, i64) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @rt_stats(...) #1

declare dso_local i32 @routepr(i32, i64) #1

declare dso_local i32 @mrt_stats(...) #1

declare dso_local i32 @mroutepr(...) #1

declare dso_local i32 @printproto(%struct.protox*, i64, i32*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @unixpr(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
