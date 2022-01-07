; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/clk/extr_clk.c_clknode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32, i8*, i32, i32, i32, i32, i32, i32*, %struct.clkdom*, i32, i32, i8*, i8*, i32, i32 }
%struct.clkdom = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clknode_init_def = type { i8*, i32, i32, i32, i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"clock name is NULL\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"clock name is empty\00", align 1
@CLK_NODE_LINKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Linked clock must not have parents\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Linked clock cannot have own softc\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"linked clock must be from another domain that real one\00", align 1
@clkdom_link = common dso_local global i32 0, align 4
@clknode_list = common dso_local global i32 0, align 4
@clklist_link = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Duplicated clock registration: %s\0A\00", align 1
@M_CLOCK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"Clocknode lock\00", align 1
@CLK_NODE_STATIC_STRINGS = common dso_local global i32 0, align 4
@CLKNODE_IDX_NONE = common dso_local global i32 0, align 4
@_hw_clock = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"A clock node\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"The clock frequency\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CLKNODE_SYSCTL_PARENT = common dso_local global i32 0, align 4
@clknode_sysctl = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"The clock parent\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@CLKNODE_SYSCTL_PARENTS_LIST = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"The clock parents list\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"childrens\00", align 1
@CLKNODE_SYSCTL_CHILDREN_LIST = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"The clock childrens list\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"enable_cnt\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"The clock enable counter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clknode* @clknode_create(%struct.clkdom* %0, %struct.TYPE_3__* %1, %struct.clknode_init_def* %2) #0 {
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca %struct.clkdom*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.clknode_init_def*, align 8
  %8 = alloca %struct.clknode*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca i32, align 4
  store %struct.clkdom* %0, %struct.clkdom** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.clknode_init_def* %2, %struct.clknode_init_def** %7, align 8
  %11 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %12 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %18 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %27 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CLK_NODE_LINKED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %34 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %32, %3
  %46 = call i32 (...) @CLK_TOPO_SLOCK()
  %47 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %48 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call %struct.clknode* @clknode_find_by_name(i8* %49)
  store %struct.clknode* %50, %struct.clknode** %8, align 8
  %51 = call i32 (...) @CLK_TOPO_UNLOCK()
  %52 = load %struct.clknode*, %struct.clknode** %8, align 8
  %53 = icmp ne %struct.clknode* %52, null
  br i1 %53, label %54, label %124

54:                                               ; preds = %45
  %55 = load %struct.clknode*, %struct.clknode** %8, align 8
  %56 = getelementptr inbounds %struct.clknode, %struct.clknode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CLK_NODE_LINKED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54
  %62 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %63 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CLK_NODE_LINKED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load %struct.clknode*, %struct.clknode** %8, align 8
  store %struct.clknode* %69, %struct.clknode** %4, align 8
  br label %303

70:                                               ; preds = %61, %54
  %71 = load %struct.clknode*, %struct.clknode** %8, align 8
  %72 = getelementptr inbounds %struct.clknode, %struct.clknode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CLK_NODE_LINKED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %79 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CLK_NODE_LINKED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %77
  %85 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %86 = load %struct.clknode*, %struct.clknode** %8, align 8
  %87 = getelementptr inbounds %struct.clknode, %struct.clknode* %86, i32 0, i32 8
  %88 = load %struct.clkdom*, %struct.clkdom** %87, align 8
  %89 = icmp ne %struct.clkdom* %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @KASSERT(i32 %90, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %93 = getelementptr inbounds %struct.clkdom, %struct.clkdom* %92, i32 0, i32 0
  %94 = load %struct.clknode*, %struct.clknode** %8, align 8
  %95 = load i32, i32* @clkdom_link, align 4
  %96 = call i32 @TAILQ_REMOVE(i32* %93, %struct.clknode* %94, i32 %95)
  %97 = load %struct.clknode*, %struct.clknode** %8, align 8
  %98 = load i32, i32* @clklist_link, align 4
  %99 = call i32 @TAILQ_REMOVE(i32* @clknode_list, %struct.clknode* %97, i32 %98)
  store i32 1, i32* %10, align 4
  br label %122

100:                                              ; preds = %77, %70
  %101 = load %struct.clknode*, %struct.clknode** %8, align 8
  %102 = getelementptr inbounds %struct.clknode, %struct.clknode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CLK_NODE_LINKED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %109 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CLK_NODE_LINKED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load %struct.clknode*, %struct.clknode** %8, align 8
  store %struct.clknode* %115, %struct.clknode** %4, align 8
  br label %303

116:                                              ; preds = %107, %100
  %117 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %118 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %122
  br label %137

124:                                              ; preds = %45
  %125 = load i32, i32* @M_CLOCK, align 4
  %126 = load i32, i32* @M_WAITOK, align 4
  %127 = load i32, i32* @M_ZERO, align 4
  %128 = or i32 %126, %127
  %129 = call i8* @malloc(i32 88, i32 %125, i32 %128)
  %130 = bitcast i8* %129 to %struct.clknode*
  store %struct.clknode* %130, %struct.clknode** %8, align 8
  %131 = load %struct.clknode*, %struct.clknode** %8, align 8
  %132 = getelementptr inbounds %struct.clknode, %struct.clknode* %131, i32 0, i32 14
  %133 = call i32 @sx_init(i32* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %134 = load %struct.clknode*, %struct.clknode** %8, align 8
  %135 = getelementptr inbounds %struct.clknode, %struct.clknode* %134, i32 0, i32 13
  %136 = call i32 @TAILQ_INIT(i32* %135)
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %124, %123
  %138 = load %struct.clknode*, %struct.clknode** %8, align 8
  %139 = ptrtoint %struct.clknode* %138 to i32
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = ptrtoint %struct.TYPE_3__* %140 to i32
  %142 = call i32 @kobj_init(i32 %139, i32 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %137
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @M_CLOCK, align 4
  %152 = load i32, i32* @M_WAITOK, align 4
  %153 = load i32, i32* @M_ZERO, align 4
  %154 = or i32 %152, %153
  %155 = call i8* @malloc(i32 %150, i32 %151, i32 %154)
  %156 = load %struct.clknode*, %struct.clknode** %8, align 8
  %157 = getelementptr inbounds %struct.clknode, %struct.clknode* %156, i32 0, i32 12
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %147, %137
  %159 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %160 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 8, %162
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @M_CLOCK, align 4
  %166 = load i32, i32* @M_WAITOK, align 4
  %167 = load i32, i32* @M_ZERO, align 4
  %168 = or i32 %166, %167
  %169 = call i8* @malloc(i32 %164, i32 %165, i32 %168)
  %170 = load %struct.clknode*, %struct.clknode** %8, align 8
  %171 = getelementptr inbounds %struct.clknode, %struct.clknode* %170, i32 0, i32 11
  store i8* %169, i8** %171, align 8
  %172 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %173 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @CLK_NODE_STATIC_STRINGS, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %158
  %179 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %180 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.clknode*, %struct.clknode** %8, align 8
  %183 = getelementptr inbounds %struct.clknode, %struct.clknode* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %185 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.clknode*, %struct.clknode** %8, align 8
  %188 = getelementptr inbounds %struct.clknode, %struct.clknode* %187, i32 0, i32 10
  store i32 %186, i32* %188, align 4
  br label %206

189:                                              ; preds = %158
  %190 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %191 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load i32, i32* @M_CLOCK, align 4
  %194 = call i8* @strdup(i8* %192, i32 %193)
  %195 = load %struct.clknode*, %struct.clknode** %8, align 8
  %196 = getelementptr inbounds %struct.clknode, %struct.clknode* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %198 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %201 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @strdup_list(i32 %199, i32 %202)
  %204 = load %struct.clknode*, %struct.clknode** %8, align 8
  %205 = getelementptr inbounds %struct.clknode, %struct.clknode* %204, i32 0, i32 10
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %189, %178
  %207 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %208 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.clknode*, %struct.clknode** %8, align 8
  %211 = getelementptr inbounds %struct.clknode, %struct.clknode* %210, i32 0, i32 9
  store i32 %209, i32* %211, align 8
  %212 = load %struct.clkdom*, %struct.clkdom** %5, align 8
  %213 = load %struct.clknode*, %struct.clknode** %8, align 8
  %214 = getelementptr inbounds %struct.clknode, %struct.clknode* %213, i32 0, i32 8
  store %struct.clkdom* %212, %struct.clkdom** %214, align 8
  %215 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %216 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.clknode*, %struct.clknode** %8, align 8
  %219 = getelementptr inbounds %struct.clknode, %struct.clknode* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load %struct.clknode_init_def*, %struct.clknode_init_def** %7, align 8
  %221 = getelementptr inbounds %struct.clknode_init_def, %struct.clknode_init_def* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.clknode*, %struct.clknode** %8, align 8
  %224 = getelementptr inbounds %struct.clknode, %struct.clknode* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.clknode*, %struct.clknode** %8, align 8
  %226 = getelementptr inbounds %struct.clknode, %struct.clknode* %225, i32 0, i32 7
  store i32* null, i32** %226, align 8
  %227 = load i32, i32* @CLKNODE_IDX_NONE, align 4
  %228 = load %struct.clknode*, %struct.clknode** %8, align 8
  %229 = getelementptr inbounds %struct.clknode, %struct.clknode* %228, i32 0, i32 6
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %206
  %233 = load %struct.clknode*, %struct.clknode** %8, align 8
  store %struct.clknode* %233, %struct.clknode** %4, align 8
  br label %303

234:                                              ; preds = %206
  %235 = load %struct.clknode*, %struct.clknode** %8, align 8
  %236 = getelementptr inbounds %struct.clknode, %struct.clknode* %235, i32 0, i32 4
  %237 = call i32 @sysctl_ctx_init(i32* %236)
  %238 = load %struct.clknode*, %struct.clknode** %8, align 8
  %239 = getelementptr inbounds %struct.clknode, %struct.clknode* %238, i32 0, i32 4
  %240 = load i32, i32* @_hw_clock, align 4
  %241 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %240)
  %242 = load i32, i32* @OID_AUTO, align 4
  %243 = load %struct.clknode*, %struct.clknode** %8, align 8
  %244 = getelementptr inbounds %struct.clknode, %struct.clknode* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* @CTLFLAG_RD, align 4
  %247 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %239, i32 %241, i32 %242, i8* %245, i32 %246, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %247, %struct.sysctl_oid** %9, align 8
  %248 = load %struct.clknode*, %struct.clknode** %8, align 8
  %249 = getelementptr inbounds %struct.clknode, %struct.clknode* %248, i32 0, i32 4
  %250 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %251 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %250)
  %252 = load i32, i32* @OID_AUTO, align 4
  %253 = load i32, i32* @CTLFLAG_RD, align 4
  %254 = load %struct.clknode*, %struct.clknode** %8, align 8
  %255 = getelementptr inbounds %struct.clknode, %struct.clknode* %254, i32 0, i32 5
  %256 = call i32 @SYSCTL_ADD_U64(i32* %249, i32 %251, i32 %252, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %253, i32* %255, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %257 = load %struct.clknode*, %struct.clknode** %8, align 8
  %258 = getelementptr inbounds %struct.clknode, %struct.clknode* %257, i32 0, i32 4
  %259 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %260 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %259)
  %261 = load i32, i32* @OID_AUTO, align 4
  %262 = load i32, i32* @CTLTYPE_STRING, align 4
  %263 = load i32, i32* @CTLFLAG_RD, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.clknode*, %struct.clknode** %8, align 8
  %266 = load i32, i32* @CLKNODE_SYSCTL_PARENT, align 4
  %267 = load i32, i32* @clknode_sysctl, align 4
  %268 = call i32 @SYSCTL_ADD_PROC(i32* %258, i32 %260, i32 %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %264, %struct.clknode* %265, i32 %266, i32 %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %269 = load %struct.clknode*, %struct.clknode** %8, align 8
  %270 = getelementptr inbounds %struct.clknode, %struct.clknode* %269, i32 0, i32 4
  %271 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %272 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %271)
  %273 = load i32, i32* @OID_AUTO, align 4
  %274 = load i32, i32* @CTLTYPE_STRING, align 4
  %275 = load i32, i32* @CTLFLAG_RD, align 4
  %276 = or i32 %274, %275
  %277 = load %struct.clknode*, %struct.clknode** %8, align 8
  %278 = load i32, i32* @CLKNODE_SYSCTL_PARENTS_LIST, align 4
  %279 = load i32, i32* @clknode_sysctl, align 4
  %280 = call i32 @SYSCTL_ADD_PROC(i32* %270, i32 %272, i32 %273, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %276, %struct.clknode* %277, i32 %278, i32 %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %281 = load %struct.clknode*, %struct.clknode** %8, align 8
  %282 = getelementptr inbounds %struct.clknode, %struct.clknode* %281, i32 0, i32 4
  %283 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %284 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %283)
  %285 = load i32, i32* @OID_AUTO, align 4
  %286 = load i32, i32* @CTLTYPE_STRING, align 4
  %287 = load i32, i32* @CTLFLAG_RD, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.clknode*, %struct.clknode** %8, align 8
  %290 = load i32, i32* @CLKNODE_SYSCTL_CHILDREN_LIST, align 4
  %291 = load i32, i32* @clknode_sysctl, align 4
  %292 = call i32 @SYSCTL_ADD_PROC(i32* %282, i32 %284, i32 %285, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %288, %struct.clknode* %289, i32 %290, i32 %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %293 = load %struct.clknode*, %struct.clknode** %8, align 8
  %294 = getelementptr inbounds %struct.clknode, %struct.clknode* %293, i32 0, i32 4
  %295 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %296 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %295)
  %297 = load i32, i32* @OID_AUTO, align 4
  %298 = load i32, i32* @CTLFLAG_RD, align 4
  %299 = load %struct.clknode*, %struct.clknode** %8, align 8
  %300 = getelementptr inbounds %struct.clknode, %struct.clknode* %299, i32 0, i32 3
  %301 = call i32 @SYSCTL_ADD_INT(i32* %294, i32 %296, i32 %297, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %298, i32* %300, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %302 = load %struct.clknode*, %struct.clknode** %8, align 8
  store %struct.clknode* %302, %struct.clknode** %4, align 8
  br label %303

303:                                              ; preds = %234, %232, %114, %68
  %304 = load %struct.clknode*, %struct.clknode** %4, align 8
  ret %struct.clknode* %304
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CLK_TOPO_SLOCK(...) #1

declare dso_local %struct.clknode* @clknode_find_by_name(i8*) #1

declare dso_local i32 @CLK_TOPO_UNLOCK(...) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.clknode*, i32) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @kobj_init(i32, i32) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @strdup_list(i32, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_U64(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.clknode*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
