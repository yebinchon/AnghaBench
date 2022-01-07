; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_getprintcap_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_printcap.c_getprintcap_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@PCAPERR_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"af\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"acct.file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tty.rate\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"remote.timeout\00", align 1
@DEFTIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"daemon.user\00", align 1
@DEFUID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"job.formfeed\00", align 1
@DEFFF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"lf\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"spool.log\00", align 1
@_PATH_CONSOLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"spool.lock\00", align 1
@DEFLOCK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"tty.device\00", align 1
@_PATH_DEFDEVLP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"max.copies\00", align 1
@DEFMAXCOPIES = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tty.mode\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"max.blocks\00", align 1
@DEFMX = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"acct.price\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"page.length\00", align 1
@DEFLENGTH = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"pw\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"page.width\00", align 1
@DEFWIDTH = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"page.pwidth\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"page.plength\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"rg\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"daemon.restrictgrp\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"remote.host\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"rp\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"remote.queue\00", align 1
@DEFLP = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"spool.dir\00", align 1
@_PATH_DEFSPOOL = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [3 x i8] c"sr\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"stat.recv\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"stat.send\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"spool.status\00", align 1
@DEFSTAT = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"job.trailer\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"remote.resend_copies\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"daemon.restricted\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"banner.short\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"job.no_copies\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"job.no_formfeed\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"banner.disable\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"hl\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"banner.last\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"tty.rw\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"job.topofform\00", align 1
@PCAPERR_NOTFOUND = common dso_local global i32 0, align 4
@LPF_COUNT = common dso_local global i32 0, align 4
@filters = common dso_local global i8** null, align 8
@longfilters = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.printer*)* @getprintcap_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getprintcap_int(i8* %0, %struct.printer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.printer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.printer* %1, %struct.printer** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @capdb_canonical_name(i8* %9)
  %11 = load %struct.printer*, %struct.printer** %5, align 8
  %12 = getelementptr inbounds %struct.printer, %struct.printer* %11, i32 0, i32 35
  store i32* %10, i32** %12, align 8
  %13 = icmp eq i32* %10, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %15, i32* %3, align 4
  br label %396

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.printer*, %struct.printer** %5, align 8
  %20 = getelementptr inbounds %struct.printer, %struct.printer* %19, i32 0, i32 0
  %21 = call i32 @capdb_getaltstr(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, i8** %20)
  %22 = load i32, i32* @PCAPERR_OSERR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %25, i32* %3, align 4
  br label %396

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.printer*, %struct.printer** %5, align 8
  %31 = getelementptr inbounds %struct.printer, %struct.printer* %30, i32 0, i32 34
  %32 = call i32 @capdb_getaltnum(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %31)
  %33 = load i32, i32* @PCAPERR_OSERR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %36, i32* %3, align 4
  br label %396

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @DEFTIMEOUT, align 4
  %42 = load %struct.printer*, %struct.printer** %5, align 8
  %43 = getelementptr inbounds %struct.printer, %struct.printer* %42, i32 0, i32 33
  %44 = call i32 @capdb_getaltnum(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %41, i32* %43)
  %45 = load i32, i32* @PCAPERR_OSERR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %48, i32* %3, align 4
  br label %396

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* @DEFUID, align 4
  %54 = load %struct.printer*, %struct.printer** %5, align 8
  %55 = getelementptr inbounds %struct.printer, %struct.printer* %54, i32 0, i32 32
  %56 = call i32 @capdb_getaltnum(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %53, i32* %55)
  %57 = load i32, i32* @PCAPERR_OSERR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %60, i32* %3, align 4
  br label %396

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @DEFFF, align 4
  %66 = load %struct.printer*, %struct.printer** %5, align 8
  %67 = getelementptr inbounds %struct.printer, %struct.printer* %66, i32 0, i32 1
  %68 = call i32 @capdb_getaltstr(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %65, i8** %67)
  %69 = load i32, i32* @PCAPERR_OSERR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %72, i32* %3, align 4
  br label %396

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* @_PATH_CONSOLE, align 4
  %78 = load %struct.printer*, %struct.printer** %5, align 8
  %79 = getelementptr inbounds %struct.printer, %struct.printer* %78, i32 0, i32 2
  %80 = call i32 @capdb_getaltstr(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %77, i8** %79)
  %81 = load i32, i32* @PCAPERR_OSERR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %84, i32* %3, align 4
  br label %396

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* @DEFLOCK, align 4
  %90 = load %struct.printer*, %struct.printer** %5, align 8
  %91 = getelementptr inbounds %struct.printer, %struct.printer* %90, i32 0, i32 3
  %92 = call i32 @capdb_getaltstr(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %89, i8** %91)
  %93 = load i32, i32* @PCAPERR_OSERR, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %96, i32* %3, align 4
  br label %396

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* @_PATH_DEFDEVLP, align 4
  %102 = load %struct.printer*, %struct.printer** %5, align 8
  %103 = getelementptr inbounds %struct.printer, %struct.printer* %102, i32 0, i32 4
  %104 = call i32 @capdb_getaltstr(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %101, i8** %103)
  %105 = load i32, i32* @PCAPERR_OSERR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %108, i32* %3, align 4
  br label %396

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* @DEFMAXCOPIES, align 4
  %114 = load %struct.printer*, %struct.printer** %5, align 8
  %115 = getelementptr inbounds %struct.printer, %struct.printer* %114, i32 0, i32 31
  %116 = call i32 @capdb_getaltnum(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %113, i32* %115)
  %117 = load i32, i32* @PCAPERR_OSERR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %120, i32* %3, align 4
  br label %396

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %4, align 8
  %125 = load %struct.printer*, %struct.printer** %5, align 8
  %126 = getelementptr inbounds %struct.printer, %struct.printer* %125, i32 0, i32 5
  %127 = call i32 @capdb_getaltstr(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 0, i8** %126)
  %128 = load i32, i32* @PCAPERR_OSERR, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %131, i32* %3, align 4
  br label %396

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  br label %134

134:                                              ; preds = %133
  %135 = load i8*, i8** %4, align 8
  %136 = load i32, i32* @DEFMX, align 4
  %137 = load %struct.printer*, %struct.printer** %5, align 8
  %138 = getelementptr inbounds %struct.printer, %struct.printer* %137, i32 0, i32 30
  %139 = call i32 @capdb_getaltnum(i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %136, i32* %138)
  %140 = load i32, i32* @PCAPERR_OSERR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %143, i32* %3, align 4
  br label %396

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %4, align 8
  %148 = load %struct.printer*, %struct.printer** %5, align 8
  %149 = getelementptr inbounds %struct.printer, %struct.printer* %148, i32 0, i32 29
  %150 = call i32 @capdb_getaltnum(i8* %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 0, i32* %149)
  %151 = load i32, i32* @PCAPERR_OSERR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %154, i32* %3, align 4
  br label %396

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* @DEFLENGTH, align 4
  %160 = load %struct.printer*, %struct.printer** %5, align 8
  %161 = getelementptr inbounds %struct.printer, %struct.printer* %160, i32 0, i32 28
  %162 = call i32 @capdb_getaltnum(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %159, i32* %161)
  %163 = load i32, i32* @PCAPERR_OSERR, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %166, i32* %3, align 4
  br label %396

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* @DEFWIDTH, align 4
  %172 = load %struct.printer*, %struct.printer** %5, align 8
  %173 = getelementptr inbounds %struct.printer, %struct.printer* %172, i32 0, i32 27
  %174 = call i32 @capdb_getaltnum(i8* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i32 %171, i32* %173)
  %175 = load i32, i32* @PCAPERR_OSERR, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %178, i32* %3, align 4
  br label %396

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  %182 = load i8*, i8** %4, align 8
  %183 = load %struct.printer*, %struct.printer** %5, align 8
  %184 = getelementptr inbounds %struct.printer, %struct.printer* %183, i32 0, i32 26
  %185 = call i32 @capdb_getaltnum(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i32 0, i32* %184)
  %186 = load i32, i32* @PCAPERR_OSERR, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %189, i32* %3, align 4
  br label %396

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  %193 = load i8*, i8** %4, align 8
  %194 = load %struct.printer*, %struct.printer** %5, align 8
  %195 = getelementptr inbounds %struct.printer, %struct.printer* %194, i32 0, i32 25
  %196 = call i32 @capdb_getaltnum(i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 0, i32* %195)
  %197 = load i32, i32* @PCAPERR_OSERR, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %200, i32* %3, align 4
  br label %396

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  %204 = load i8*, i8** %4, align 8
  %205 = load %struct.printer*, %struct.printer** %5, align 8
  %206 = getelementptr inbounds %struct.printer, %struct.printer* %205, i32 0, i32 6
  %207 = call i32 @capdb_getaltstr(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i32 0, i8** %206)
  %208 = load i32, i32* @PCAPERR_OSERR, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %211, i32* %3, align 4
  br label %396

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  %215 = load i8*, i8** %4, align 8
  %216 = load %struct.printer*, %struct.printer** %5, align 8
  %217 = getelementptr inbounds %struct.printer, %struct.printer* %216, i32 0, i32 7
  %218 = call i32 @capdb_getaltstr(i8* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 0, i8** %217)
  %219 = load i32, i32* @PCAPERR_OSERR, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %222, i32* %3, align 4
  br label %396

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  %226 = load i8*, i8** %4, align 8
  %227 = load i32, i32* @DEFLP, align 4
  %228 = load %struct.printer*, %struct.printer** %5, align 8
  %229 = getelementptr inbounds %struct.printer, %struct.printer* %228, i32 0, i32 8
  %230 = call i32 @capdb_getaltstr(i8* %226, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %227, i8** %229)
  %231 = load i32, i32* @PCAPERR_OSERR, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %234, i32* %3, align 4
  br label %396

235:                                              ; preds = %225
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  %238 = load i8*, i8** %4, align 8
  %239 = load i32, i32* @_PATH_DEFSPOOL, align 4
  %240 = load %struct.printer*, %struct.printer** %5, align 8
  %241 = getelementptr inbounds %struct.printer, %struct.printer* %240, i32 0, i32 9
  %242 = call i32 @capdb_getaltstr(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 %239, i8** %241)
  %243 = load i32, i32* @PCAPERR_OSERR, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %237
  %246 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %246, i32* %3, align 4
  br label %396

247:                                              ; preds = %237
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  %250 = load i8*, i8** %4, align 8
  %251 = load %struct.printer*, %struct.printer** %5, align 8
  %252 = getelementptr inbounds %struct.printer, %struct.printer* %251, i32 0, i32 10
  %253 = call i32 @capdb_getaltstr(i8* %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32 0, i8** %252)
  %254 = load i32, i32* @PCAPERR_OSERR, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %257, i32* %3, align 4
  br label %396

258:                                              ; preds = %249
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  %261 = load i8*, i8** %4, align 8
  %262 = load %struct.printer*, %struct.printer** %5, align 8
  %263 = getelementptr inbounds %struct.printer, %struct.printer* %262, i32 0, i32 11
  %264 = call i32 @capdb_getaltstr(i8* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i32 0, i8** %263)
  %265 = load i32, i32* @PCAPERR_OSERR, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %268, i32* %3, align 4
  br label %396

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  %272 = load i8*, i8** %4, align 8
  %273 = load i32, i32* @DEFSTAT, align 4
  %274 = load %struct.printer*, %struct.printer** %5, align 8
  %275 = getelementptr inbounds %struct.printer, %struct.printer* %274, i32 0, i32 12
  %276 = call i32 @capdb_getaltstr(i8* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i32 %273, i8** %275)
  %277 = load i32, i32* @PCAPERR_OSERR, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %271
  %280 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %280, i32* %3, align 4
  br label %396

281:                                              ; preds = %271
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282
  %284 = load i8*, i8** %4, align 8
  %285 = load %struct.printer*, %struct.printer** %5, align 8
  %286 = getelementptr inbounds %struct.printer, %struct.printer* %285, i32 0, i32 13
  %287 = call i32 @capdb_getaltstr(i8* %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 0, i8** %286)
  %288 = load i32, i32* @PCAPERR_OSERR, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %283
  %291 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %291, i32* %3, align 4
  br label %396

292:                                              ; preds = %283
  br label %293

293:                                              ; preds = %292
  %294 = load i8*, i8** %4, align 8
  %295 = call i8* @capdb_getaltlog(i8* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0))
  %296 = load %struct.printer*, %struct.printer** %5, align 8
  %297 = getelementptr inbounds %struct.printer, %struct.printer* %296, i32 0, i32 24
  store i8* %295, i8** %297, align 8
  %298 = load i8*, i8** %4, align 8
  %299 = call i8* @capdb_getaltlog(i8* %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i64 0, i64 0))
  %300 = load %struct.printer*, %struct.printer** %5, align 8
  %301 = getelementptr inbounds %struct.printer, %struct.printer* %300, i32 0, i32 23
  store i8* %299, i8** %301, align 8
  %302 = load i8*, i8** %4, align 8
  %303 = call i8* @capdb_getaltlog(i8* %302, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0))
  %304 = load %struct.printer*, %struct.printer** %5, align 8
  %305 = getelementptr inbounds %struct.printer, %struct.printer* %304, i32 0, i32 22
  store i8* %303, i8** %305, align 8
  %306 = load i8*, i8** %4, align 8
  %307 = call i8* @capdb_getaltlog(i8* %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i64 0, i64 0))
  %308 = load %struct.printer*, %struct.printer** %5, align 8
  %309 = getelementptr inbounds %struct.printer, %struct.printer* %308, i32 0, i32 21
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** %4, align 8
  %311 = call i8* @capdb_getaltlog(i8* %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i64 0, i64 0))
  %312 = load %struct.printer*, %struct.printer** %5, align 8
  %313 = getelementptr inbounds %struct.printer, %struct.printer* %312, i32 0, i32 20
  store i8* %311, i8** %313, align 8
  %314 = load i8*, i8** %4, align 8
  %315 = call i8* @capdb_getaltlog(i8* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0))
  %316 = load %struct.printer*, %struct.printer** %5, align 8
  %317 = getelementptr inbounds %struct.printer, %struct.printer* %316, i32 0, i32 19
  store i8* %315, i8** %317, align 8
  %318 = load i8*, i8** %4, align 8
  %319 = call i8* @capdb_getaltlog(i8* %318, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0))
  %320 = load %struct.printer*, %struct.printer** %5, align 8
  %321 = getelementptr inbounds %struct.printer, %struct.printer* %320, i32 0, i32 18
  store i8* %319, i8** %321, align 8
  %322 = load i8*, i8** %4, align 8
  %323 = call i8* @capdb_getaltlog(i8* %322, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0))
  %324 = load %struct.printer*, %struct.printer** %5, align 8
  %325 = getelementptr inbounds %struct.printer, %struct.printer* %324, i32 0, i32 17
  store i8* %323, i8** %325, align 8
  %326 = load i8*, i8** %4, align 8
  %327 = call i8* @capdb_getaltlog(i8* %326, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0))
  %328 = icmp ne i8* %327, null
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = load %struct.printer*, %struct.printer** %5, align 8
  %332 = getelementptr inbounds %struct.printer, %struct.printer* %331, i32 0, i32 14
  store i32 %330, i32* %332, align 8
  %333 = load %struct.printer*, %struct.printer** %5, align 8
  %334 = getelementptr inbounds %struct.printer, %struct.printer* %333, i32 0, i32 15
  store i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %293
  %336 = load i8*, i8** %4, align 8
  %337 = call i32 @capdb_getaltstr(i8* %336, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 0, i8** %7)
  store i32 %337, i32* %8, align 4
  %338 = load i32, i32* @PCAPERR_OSERR, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %335
  %341 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %341, i32* %3, align 4
  br label %396

342:                                              ; preds = %335
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %8, align 4
  %345 = load i32, i32* @PCAPERR_NOTFOUND, align 4
  %346 = icmp ne i32 %344, %345
  br i1 %346, label %347, label %361

347:                                              ; preds = %343
  %348 = load i8*, i8** %7, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %361

350:                                              ; preds = %347
  %351 = load i8*, i8** %4, align 8
  %352 = load i8*, i8** %7, align 8
  %353 = call i64 @cgetmatch(i8* %351, i8* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.printer*, %struct.printer** %5, align 8
  %357 = getelementptr inbounds %struct.printer, %struct.printer* %356, i32 0, i32 15
  store i32 0, i32* %357, align 4
  br label %358

358:                                              ; preds = %355, %350
  %359 = load i8*, i8** %7, align 8
  %360 = call i32 @free(i8* %359)
  br label %361

361:                                              ; preds = %358, %347, %343
  store i32 0, i32* %6, align 4
  br label %362

362:                                              ; preds = %392, %361
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* @LPF_COUNT, align 4
  %365 = icmp ult i32 %363, %364
  br i1 %365, label %366, label %395

366:                                              ; preds = %362
  br label %367

367:                                              ; preds = %366
  %368 = load i8*, i8** %4, align 8
  %369 = load i8**, i8*** @filters, align 8
  %370 = load i32, i32* %6, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = load i8**, i8*** @longfilters, align 8
  %375 = load i32, i32* %6, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i8*, i8** %374, i64 %376
  %378 = load i8*, i8** %377, align 8
  %379 = load %struct.printer*, %struct.printer** %5, align 8
  %380 = getelementptr inbounds %struct.printer, %struct.printer* %379, i32 0, i32 16
  %381 = load i8**, i8*** %380, align 8
  %382 = load i32, i32* %6, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i8*, i8** %381, i64 %383
  %385 = call i32 @capdb_getaltstr(i8* %368, i8* %373, i8* %378, i32 0, i8** %384)
  %386 = load i32, i32* @PCAPERR_OSERR, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %390

388:                                              ; preds = %367
  %389 = load i32, i32* @PCAPERR_OSERR, align 4
  store i32 %389, i32* %3, align 4
  br label %396

390:                                              ; preds = %367
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %6, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %6, align 4
  br label %362

395:                                              ; preds = %362
  store i32 0, i32* %3, align 4
  br label %396

396:                                              ; preds = %395, %388, %340, %290, %279, %267, %256, %245, %233, %221, %210, %199, %188, %177, %165, %153, %142, %130, %119, %107, %95, %83, %71, %59, %47, %35, %24, %14
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local i32* @capdb_canonical_name(i8*) #1

declare dso_local i32 @capdb_getaltstr(i8*, i8*, i8*, i32, i8**) #1

declare dso_local i32 @capdb_getaltnum(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i8* @capdb_getaltlog(i8*, i8*, i8*) #1

declare dso_local i64 @cgetmatch(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
