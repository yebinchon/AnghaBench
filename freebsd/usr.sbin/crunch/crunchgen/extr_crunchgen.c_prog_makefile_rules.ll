; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_prog_makefile_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_prog_makefile_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [17 x i8] c"\0A# -------- %s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s_OBJDIR=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"$(MAKEOBJDIRPREFIX)/$(%s_REALSRCDIR)\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%s_OBJPATHS=\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" $(%s_OBJDIR)/%s\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"$(%s_OBJPATHS): .NOMETA\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s_SRCDIR=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%s_REALSRCDIR=%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%s_OBJS=\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%s_OPTS+=\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%s_make:\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09(cd $(%s_SRCDIR) && \00", align 1
@makeobj = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"$(CRUNCHMAKE) obj && \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\\\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\09\09$(CRUNCHMAKE) $(BUILDOPTS) $(%s_OPTS) depend &&\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"\09\09$(CRUNCHMAKE) $(BUILDOPTS) $(%s_OPTS) $(%s_OBJS))\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"%s_clean:\0A\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"\09(cd $(%s_SRCDIR) && $(CRUNCHMAKE) $(BUILDOPTS) clean cleandepend)\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\09@echo \22** cannot make objs for %s\22\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"%s_LIBS=\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"%s_stub.c:\0A\00", align 1
@.str.23 = private unnamed_addr constant [161 x i8] c"\09echo \22extern int main(int argc, char **argv, char **envp); int _crunched_%s_stub(int argc, char **argv, char **envp){return main(argc,argv,envp);}\22 >%s_stub.c\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s.lo: %s_stub.o $(%s_OBJPATHS)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c" $(%s_LIBS)\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"\09$(CC) -nostdlib -Wl,-dc -r -o %s.lo %s_stub.o $(%s_OBJPATHS)\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\09crunchide -k _crunched_%s_stub \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"-k _%s \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s.lo\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prog_makefile_rules(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %32

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 9
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @output_strlst(i32* %45, %struct.TYPE_5__* %48)
  br label %73

50:                                               ; preds = %32
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %5, align 8
  br label %54

54:                                               ; preds = %66, %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %61, i8* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %5, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %44
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %176

83:                                               ; preds = %73
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %176

88:                                               ; preds = %83
  %89 = load i32*, i32** %3, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %92, i8* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %100, i8* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %108)
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = call i32 @output_strlst(i32* %110, %struct.TYPE_5__* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 7
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = icmp ne %struct.TYPE_5__* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %88
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %3, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 7
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = call i32 @output_strlst(i32* %125, %struct.TYPE_5__* %128)
  br label %130

130:                                              ; preds = %119, %88
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %134)
  %136 = load i32*, i32** %3, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %139)
  %141 = load i64, i64* @makeobj, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %130
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %149 = load i32*, i32** %3, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %156 = load i32*, i32** %3, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i8* %159, i8* %162)
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 (i32*, i8*, ...) @fprintf(i32* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32*, i32** %3, align 8
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %169)
  %171 = load i32*, i32** %3, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0), i8* %174)
  br label %187

176:                                              ; preds = %83, %73
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %180)
  %182 = load i32*, i32** %3, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %176, %146
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = icmp ne %struct.TYPE_5__* %190, null
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load i32*, i32** %3, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* %196)
  %198 = load i32*, i32** %3, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 6
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = call i32 @output_strlst(i32* %198, %struct.TYPE_5__* %201)
  br label %203

203:                                              ; preds = %192, %187
  %204 = load i32*, i32** %3, align 8
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i32*, i8*, ...) @fprintf(i32* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %207)
  %209 = load i32*, i32** %3, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.23, i64 0, i64 0), i8* %212, i8* %215)
  %217 = load i32*, i32** %3, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* %220, i8* %223, i8* %226)
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 6
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = icmp ne %struct.TYPE_5__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %203
  %233 = load i32*, i32** %3, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i32*, i8*, ...) @fprintf(i32* %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %236)
  br label %238

238:                                              ; preds = %232, %203
  %239 = load i32*, i32** %3, align 8
  %240 = call i32 (i32*, i8*, ...) @fprintf(i32* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %241 = load i32*, i32** %3, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (i32*, i8*, ...) @fprintf(i32* %241, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i8* %244, i8* %247, i8* %250)
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 6
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = icmp ne %struct.TYPE_5__* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %238
  %257 = load i32*, i32** %3, align 8
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i32 (i32*, i8*, ...) @fprintf(i32* %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %260)
  br label %262

262:                                              ; preds = %256, %238
  %263 = load i32*, i32** %3, align 8
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %265 = load i32*, i32** %3, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %265, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* %268)
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %271, align 8
  store %struct.TYPE_5__* %272, %struct.TYPE_5__** %5, align 8
  br label %273

273:                                              ; preds = %282, %262
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %275 = icmp ne %struct.TYPE_5__* %274, null
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load i32*, i32** %3, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 (i32*, i8*, ...) @fprintf(i32* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %280)
  br label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %284, align 8
  store %struct.TYPE_5__* %285, %struct.TYPE_5__** %5, align 8
  br label %273

286:                                              ; preds = %273
  %287 = load i32*, i32** %3, align 8
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (i32*, i8*, ...) @fprintf(i32* %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* %290)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @output_strlst(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
